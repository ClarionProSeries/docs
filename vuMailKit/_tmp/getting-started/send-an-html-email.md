
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send an HTML Email

If you want a good-looking HTML email, start with the Simple HTML functions.

You do not have to create a full HTML wrapper just to send a clean message. Simple HTML mode lets vuMailKit build the wrapper, optionally place an image above and below the body, and use the normal MIME path so the message includes a plain-text alternative.

For ordinary text plus images inside the body, the easiest path is Simple HTML with NormalizeBody on plus the embed-attachments marker. For designed HTML, keep the HTML in an external file and use TokenMerge if you need personalized values.

## Option 1: Simple HTML mode

Use this when you want a clean, branded email without hand-writing a complete HTML document. The normal path is to turn on Simple HTML, turn on body normalization, and pass plain text from a TEXT control, memo field, customer note, generated report, or ordinary string. You do not need to add &lt;br&gt; or &lt;p&gt; tags just to preserve normal line breaks.

The &lt;13,10&gt; line breaks in the sample below are only there because the sample builds a string in Clarion source. In a real program, a TEXT control, memo field, customer note, or generated text field can already contain normal line breaks, and vuSetSimpleHTMLNormalizeBody(1) will convert those line breaks for HTML display.

```clarion
Result  LONG
FromAdr CSTRING(256)
ToAdr   CSTRING(256)
CCAdr   CSTRING(256)
BCCAdr  CSTRING(256)
Subject CSTRING(256)
Body    CSTRING(2048)
BodyText CSTRING(2048)
Attach  CSTRING(260)
ImgFile CSTRING(260)

Result = vuResetSimpleHTML()
Result = vuSetSimpleHTML(1)
Result = vuSetSimpleHTMLNormalizeBody(1)

! Optional: show a logo or banner above the message body.
ImgFile = CLIP(PATH()) & '\CompanyHeader.png'
Result = vuSetSimpleHTMLHeaderImage(ImgFile)

! Optional: show a footer image below the message body.
ImgFile = CLIP(PATH()) & '\CompanyFooter.png'
Result = vuSetSimpleHTMLFooterImage(ImgFile)

FromAdr = ''
ToAdr   = 'customer@example.com'
CCAdr   = ''
BCCAdr  = ''
Subject = 'Your service update'
! This sample hard-codes the text so the example is self-contained.
! In a real program, BodyText is usually filled from a TEXT control,
! TPS memo, customer note, template merge, or generated report text.
! It is plain text, not HTML.
BodyText = 'Thank you for your business.<13,10><13,10>' & |
           'Your order is ready.'
Body     = CLIP(BodyText)
Attach   = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)

! Avoid carrying this Simple HTML setup into a later unrelated send.
Result = vuResetSimpleHTML()
```

With vuSetSimpleHTMLNormalizeBody(1), the body is ordinary text. vuMailKit makes it HTML-safe and converts normal line breaks for HTML display. If the text already came from a TEXT control or memo, leave those normal line breaks in the text and pass the body as-is.

To place images inside that ordinary text body, put the embed-attachments marker in the text where the images should appear and pass local image files or remote http/https image URLs in Attach. Do not type raw HTML img tags into normalized body text; those tags will be escaped and displayed as text.

If the body is already an HTML fragment, call vuSetSimpleHTMLNormalizeBody(0) and pass only the fragment that belongs inside the body area. Do not pass a full HTML document when Simple HTML mode is on.

## Option 2: External HTML file

Use an external file when you want full control over the HTML.

For many developers, this path is:

1. Create an HTML body in an editor or with AI.
2. Save it as an external UTF-8 file.
3. Pass the file path in the Body parameter.

This avoids Clarion string escaping issues and makes the content easier to maintain.

```clarion
Body   = CLIP(PATH()) & '\CustomerNotice.html'
Attach = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END
```

If the external HTML file contains image references, vuMailKit can embed those images inside the email body. Local image references such as &lt;img src="ProductPhoto.jpg"&gt; are resolved relative to the HTML file folder. Full local paths are also supported. Remote http and https image URLs are downloaded at send time and embedded when they can be retrieved safely.

For a full body-image guide, including the legacy embed-attachments marker, see [Send an embedded image](send-an-embedded-image.md).

### Important

Save external HTML files as **UTF-8**.

That is especially important when your message includes accented characters or text in languages other than English. vuMailKit supports those characters correctly for both inline text and external files, as long as the external files are saved in UTF-8 format.

## Option 3: TokenMerge plus HTML

Use TokenMerge when the same HTML email needs customer names, invoice numbers, dates, or generated report text.

vuMailKit includes TokenMerge helpers so you can:

- replace every matching token or only the first one
- use case-sensitive or ignore-case matching
- merge tokens inside a CSTRING
- copy an external template to an output file while replacing tokens
- insert the contents of one file into a token location in another file

That last option is useful when a Clarion report writes invoice detail to a text file and you want to insert that output into the email body.

```clarion
Result = TokenMergeFileIntoFile(TemplateFile, MergedFile, |
                                '[[InvoiceBody]]', InvoiceTextFile, 0, 1)

Body   = MergedFile
Attach = ''
Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
```

Use the final 1 when the inserted file is plain text and you want its line endings converted to HTML line breaks.

## Images inside the body

If the message body is ordinary text, use Simple HTML with NormalizeBody on and the embed-attachments marker. That lets a TEXT control or memo contain normal text plus a simple marker where the images should appear.

If the message body is designed HTML, use an external HTML file with normal img tags and send the file path as the Body parameter.

For the full guide, see [Send an embedded image](send-an-embedded-image.md). That page shows the easy marker pattern, external HTML files with images, local img src paths, remote web image URLs, and the legacy compatibility behavior.

## Inline Clarion HTML

You can also embed HTML directly in Clarion source.

If you do, remember that the less-than sign must be doubled inside the Clarion source string.

That works, but for anything beyond a very small message, many developers will find Simple HTML mode or an external file easier to create and maintain.

## Next step

- [Send a Simple HTML Email with a Company Logo](send-a-simple-html-email-with-a-company-logo.md)
- [Use TokenMerge with email templates](use-tokenmerge-with-email-templates.md)
- [Send a branded HTML email from a template](send-a-branded-html-email-from-a-template.md)

## Related reference pages

- [vuSetSimpleHTML](../functions/vuSetSimpleHTML.md)
- [vuSetSimpleHTMLNormalizeBody](../functions/vuSetSimpleHTMLNormalizeBody.md)
- [vuSetSimpleHTMLHeaderImage](../functions/vuSetSimpleHTMLHeaderImage.md)
- [vuSetSimpleHTMLFooterImage](../functions/vuSetSimpleHTMLFooterImage.md)
- [vuResetSimpleHTML](../functions/vuResetSimpleHTML.md)
- [TokenMergeFileIntoFile](../functions/TokenMergeFileIntoFile.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)