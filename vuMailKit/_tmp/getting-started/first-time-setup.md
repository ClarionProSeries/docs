
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# First-Time Setup

Before any send, autodetect, or profile operation, vuMailKit licensing must be initialized for the running EXE.

The normal template-based path is:

1. Add the vuMailKit global template to the EXE application.
2. Paste the supplied license string into the template field inside single quotes.
3. Configure OAuth provider values in the template when your application will support OAuth.
4. Use the Clarion Utility Template command, CTRL+U, to import the [vuMailKit Email Setup Wizard](vumailkit-email-setup-wizard.md).
5. Compile the application.
6. Run the compiled EXE.
7. Run the **vuMailKit Email Setup Wizard** from your application.
8. Let the vuMailKit Email Setup Wizard validate the email address and detect the provider settings.
9. Complete OAuth authorization if the account requires it and OAuth support is enabled.
10. Send a test email.
11. Save the profile.

Once that succeeds, the profile is ready to use. That is the normal zero-OAuth-code path: the wizard performs OAuth authorization when needed, and your send code uses the saved profile.

## License string format

Enter the license string in the template field as a quoted Clarion string.

Example format:

```text
'license-string'
```

The global template generates the startup call to [vuMailKitInitialize](../functions/vuMailKitInitialize.md). Hand-coded integrations must call that function directly before using setup, autodetect, profile, or send functions.

If this startup step is missing, send and profile functions return -9001, and [vuMailLastError](../functions/vuMailLastError.md) reports a vuMailKit licensing/setup failure rather than a mail-server authentication failure.

## Multi-DLL applications

In a Clarion multi-DLL application, add the vuMailKit global template to the EXE app, not to each supporting DLL app.

The EXE initializes vuMailKit licensing once for the process. After that, vuMailKit can be called from code reached anywhere in the running application.

## Import the vuMailKit Email Setup Wizard

After the global template is on the EXE application and the required template settings are entered, use the Clarion **Utility Template** command, **CTRL+U**, to import the **vuMailKit Email Setup Wizard**.

The vuMailKit Email Setup Wizard handles the normal first-run work: email-address validation, provider detection, OAuth authorization when enabled and required, test send, and profile save.

See [vuMailKit Email Setup Wizard](vumailkit-email-setup-wizard.md) for the full workflow.

## Why this matters

Some developers coming from older vuMail usage expect setup to be more involved than it is now.

With vuMailKit, the common path is meant to be fast: initialize licensing, use the **vuMailKit Email Setup Wizard** to save a profile, and call the send functions.

## After setup

After the profile is saved, go to:

- [Send your first email](send-your-first-email.md)
- [Recommended send flow with a stored profile](recommended-send-flow.md)
- [Send an HTML email](send-an-html-email.md)
- [Send a Simple HTML email with a company logo](send-a-simple-html-email-with-a-company-logo.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)