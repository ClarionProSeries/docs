
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send Your First Email

Once vuMailKit licensing is initialized, the [vuMailKit Email Setup Wizard](vumailkit-email-setup-wizard.md) succeeds, and the profile is saved, sending email can be very simple.

In many cases, the next step is just to call the send function with the values you want to send.

## Before you send

The startup requirement is licensing initialization.

The usual template/global extension handles this automatically when the compiled EXE starts. Hand-coded integrations must call [vuMailKitInitialize](../functions/vuMailKitInitialize.md) at EXE startup before calling [vuSendMail](../functions/vuSendMail.md), [vuSendMailWait](../functions/vuSendMailWait.md), autodetect, or profile functions.

If initialization is missed, the send call returns -9001, and [vuMailLastError](../functions/vuMailLastError.md) identifies a vuMailKit licensing/setup failure.

## Minimal send example

```clarion
Result  LONG
FromAdr CSTRING(256)
ToAdr   CSTRING(256)
CCAdr   CSTRING(256)
BCCAdr  CSTRING(256)
Subject CSTRING(256)
Body    CSTRING(2048)
Attach  CSTRING(260)

FromAdr = ''
ToAdr   = 'customer@example.com'
CCAdr   = ''
BCCAdr  = ''
Subject = 'Test email from vuMailKit'
Body    = 'This is a test message from my Clarion application.'
Attach  = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END
```

When `FromAdr` is blank, vuMailKit uses the saved/default profile sender. No OAuth code is needed here; if the saved profile uses Microsoft or Google OAuth, vuMailKit uses the stored OAuth state behind the normal send call.

## Optional logging and sent-email copies

If you call [vuSetMailLog](../functions/vuSetMailLog.md) or [vuLogSetFile](../functions/vuLogSetFile.md), vuMailKit appends a legacy sent-mail CSV row for each send attempt.

If you call [vuSetSaveFolder](../functions/vuSetSaveFolder.md) or [vuGlobalsSetEmailFolder](../functions/vuGlobalsSetEmailFolder.md), vuMailKit saves an outgoing .eml copy in that folder before the SMTP send attempt.

These are optional. You do not need them for the first simple send.

## More complete Send button flow

The minimal example above is useful for proving the saved profile works.

For a more complete application pattern that checks whether a profile exists, offers to run the setup wizard, validates the recipient address, sends, and reports common diagnostics, see [Recommended send flow with a stored profile](recommended-send-flow.md).

## Next steps

After a plain-text message works, the most useful next step is usually Simple HTML mode:

- [Recommended send flow with a stored profile](recommended-send-flow.md)
- [Send a Simple HTML email with a company logo](send-a-simple-html-email-with-a-company-logo.md)

Then branch out to:

- [Send an HTML email](send-an-html-email.md)
- [Send an email from an external file](send-an-email-from-an-external-file.md)
- [Use TokenMerge with email templates](use-tokenmerge-with-email-templates.md)
- [Send attachments](send-attachments.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)