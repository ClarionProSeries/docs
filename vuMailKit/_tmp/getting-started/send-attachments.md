
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send Attachments

vuMailKit sends normal file attachments through the last parameter on vuSendMail() and vuSendMailWait().

You do not need a separate setup call just to attach a file. Put the attachment path, list, or wildcard mask into the Attach parameter when you send the message.

## Single attachment

Use a full path when you can. That avoids surprises when the application current folder is not what you expected.

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
Subject = 'Your invoice'
Body    = CLIP(CustomerMessageText)
Attach  = 'C:\Invoices\Invoice12345.pdf'

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END
```

CustomerMessageText can be text from a TEXT control, TPS memo, customer note, generated report, or ordinary Clarion string. You do not need to hard-code CRLF values when the text already comes from a field that contains normal line breaks.

## Multiple attachments

Use a comma-separated or semicolon-separated list in the Attach parameter.

```clarion
Attach = 'C:\Invoices\Invoice12345.pdf;C:\Invoices\Terms.pdf'
Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
```

## Wildcard attachments

Wildcard masks are supported for cases such as attaching every PDF in a generated output folder.

```clarion
Attach = 'C:\Invoices\Batch12345\*.pdf'
Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
```

## Attachments with HTML email

The same Attach parameter works with plain text, normal HTML, Simple HTML mode, and external HTML body files.

If you want an image to appear inside the HTML body instead of showing up as a normal attachment, use an embedded-image pattern instead.

For old vuMail-style code and for easy Simple HTML messages, you can also put local image files or remote http/https image URLs in the Attach parameter and place the embed-attachments marker in the Body parameter. vuMailKit replaces the marker with inline images and does not send those consumed image resources as normal attachments. This is the easiest way to place images inside ordinary TEXT-control or memo text without hand-coding HTML. See [Send an embedded image](send-an-embedded-image.md) for the exact body and attachment examples.

## Related pages

- [Send an embedded image](send-an-embedded-image.md)
- [Send your first email](send-your-first-email.md)
- [vuSendMail](../functions/vuSendMail.md)
- [vuSendMailWait](../functions/vuSendMailWait.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)