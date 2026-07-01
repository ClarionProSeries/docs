
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send an Embedded Image

An embedded image appears inside the HTML email body. That is different from a normal attachment, where the file is only listed as an attached file.

Use this page when you want to put a logo, banner, report image, product photo, chart, or other picture **inside the body of the email**, not just as a Simple HTML header or footer image.

vuMailKit supports the legacy vuMail image-embedding patterns as well as the newer Simple HTML helpers. For most new Clarion work, the easiest paths are the first two below.

## Recommended paths

| If your body starts as... | Best path |
|---|---|
| Ordinary text from a TEXT control, TPS memo, customer note, generated report, or normal Clarion string | Use Simple HTML, keep NormalizeBody on, put the embed-attachments marker where the body images should appear, and pass local image files or remote image URLs in Attach. |
| Designed HTML from an editor, AI, Word export, or reusable template | Keep the HTML in an external UTF-8 file, use TokenMerge if needed, and put normal img tags in the HTML file. |
| Very small hand-coded HTML in Clarion source | You can put img tags directly in the Body string, but Clarion source strings require doubled less-than signs. |

The first path avoids hand-coding HTML in Clarion source. The second path avoids putting the HTML design inside your Clarion source code at all.

## Method 1: Ordinary text plus body images

This is the easiest body-image path when the message text comes from a normal Clarion field.

Turn on Simple HTML mode, keep NormalizeBody on, put the embed-attachments marker where the images should appear, and pass local image files or remote image URLs in Attach.

The body text can come from a TEXT control, TPS memo, customer note, generated report, or other plain text source. It can contain normal line breaks. vuMailKit converts those line breaks for HTML display.

### What the TEXT control or memo can contain

```text
Dear Customer,

Here are the photos from today's service call:

_embed attachments width=600_

Please call us if you have any questions.
```

### Clarion send code

```clarion
Result  LONG
FromAdr CSTRING(256)
ToAdr   CSTRING(256)
CCAdr   CSTRING(256)
BCCAdr  CSTRING(256)
Subject CSTRING(256)
Body    CSTRING(8192)
Attach  CSTRING(1024)

Result = vuResetSimpleHTML()
Result = vuSetSimpleHTML(1)
Result = vuSetSimpleHTMLNormalizeBody(1)

FromAdr = ''
ToAdr   = 'customer@example.com'
CCAdr   = ''
BCCAdr  = ''
Subject = 'Service photos'

! CustomerMessageText is ordinary text from a TEXT control, TPS memo,
! customer note, generated report, or similar source.
! It can include the _embed attachments_ marker exactly where
! the image files should appear.
Body   = CLIP(CustomerMessageText)
Attach = 'C:\ServicePhotos\Photo1.jpg;C:\ServicePhotos\Photo2.jpg'

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END

Result = vuResetSimpleHTML()
```

vuMailKit replaces the marker with image tags and embeds the local or remote image resources inside the HTML body. The image resources consumed by this marker do **not** also appear as normal attachments.

### Marker options

Use the marker by itself:

```text
_embed attachments_
```

Use width when you want the email client to preserve the image aspect ratio:

```text
_embed attachments width=600_
```

Use both height and width only when you intentionally want to force the displayed size:

```text
_embed attachments height=800 width=600_
```

### Multiple images, wildcards, and remote URLs

The Attach parameter can list multiple image files:

```clarion
Attach = 'C:\Reports\Page1.png;C:\Reports\Page2.png;C:\Reports\Page3.png'
```

The Attach parameter can also use a wildcard mask:

```clarion
Attach = 'C:\Reports\Current\*.png'
```

This is useful for report-preview images or generated output folders.

The Attach parameter can also use a remote http or https image URL when the marker is used:

```clarion
Attach = 'https://www.example.com/images/ProductPhoto.jpg'
```

That means an ordinary TEXT control or memo can still be the body source. The body text contains only the simple marker, not an HTML img tag:

```text
Here is the product photo:

_embed attachments width=600_

Thank you.
```

Remote image URLs passed through Attach are downloaded and embedded when the marker consumes them. If a remote image cannot be downloaded, is not an image, is too large, or times out, vuMailKit skips that remote image and continues the send. Remote URLs are not sent as ordinary file attachments.

### Complete normalized-body example with a remote image

This keeps the body as ordinary text and uses the marker for the remote image. The developer does not type an HTML img tag into the body.

```clarion
Result  LONG
FromAdr CSTRING(256)
ToAdr   CSTRING(256)
CCAdr   CSTRING(256)
BCCAdr  CSTRING(256)
Subject CSTRING(256)
Body    CSTRING(8192)
Attach  CSTRING(1024)

Result = vuResetSimpleHTML()
Result = vuSetSimpleHTML(1)
Result = vuSetSimpleHTMLNormalizeBody(1)

FromAdr = ''
ToAdr   = 'customer@example.com'
CCAdr   = ''
BCCAdr  = ''
Subject = 'Product photo'

! CustomerMessageText is ordinary text from a TEXT control, memo,
! customer note, or generated field. It contains this marker where
! the remote image should appear:
! _embed attachments width=600_
Body   = CLIP(CustomerMessageText)
Attach = 'https://www.example.com/images/ProductPhoto.jpg'

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END

Result = vuResetSimpleHTML()
```

## Method 2: External HTML file with images

Use this when the email is easier to design outside Clarion source.

Create the HTML in an editor, AI tool, Word export, or template workflow. Save it as a UTF-8 HTML file. Put image references in the HTML where the images should appear.

Local images can be next to the HTML file, in a relative subfolder, or at a full local path. Remote http or https image URLs are downloaded at send time and embedded when they can be retrieved safely.

### Reminder.html

```html
<!doctype html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
  <p>Dear Customer,</p>
  <p>Here is the product photo:</p>
  <p><img src="ProductPhoto.jpg" width="300" alt="Product photo"></p>
  <p>Thank you for your business.</p>
</body>
</html>
```

### Clarion send code

```clarion
BodyFile CSTRING(260)
Attach   CSTRING(260)

BodyFile = CLIP(PATH()) & '\Reminder.html'
Attach   = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, BodyFile, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END
```

This path is also the best fit for [TokenMerge](use-tokenmerge-with-email-templates.md). Keep the HTML template outside the Clarion source, merge customer-specific values into a separate output file, and send the merged file.

## Method 3: Remote web image in an HTML file or HTML body

For legacy vuMail compatibility, vuMailKit also supports remote images in HTML img src values. Use this path when the body is already real HTML, not normalized ordinary text.

```html
<p>Here is the product image:</p>
<p><img src="https://www.example.com/images/ProductPhoto.jpg" width="300" alt="Product photo"></p>
```

When vuMailKit sees an http or https image URL, it tries to download the image at send time, embeds it as an inline CID image, and rewrites the HTML body to reference the embedded image.

Remote image embedding is best for public images that your application is allowed to fetch and include. If the remote image cannot be downloaded, is not an image, is too large, or times out, vuMailKit leaves the original remote image reference in the HTML rather than failing the whole send.

## Method 4: Small hand-coded HTML in Clarion source

This is supported, but it is not the easiest path for larger messages.

In Clarion source strings, each literal less-than sign must be doubled. That can make HTML examples look rough. Prefer Method 1 for ordinary text or Method 2 for designed HTML.

```clarion
Body    = '<<html><<body>' & |
          '<<p>Here is the product photo:<</p>' & |
          '<<p><<img src="C:\Images\ProductPhoto.jpg" width="300"><</p>' & |
          '<<p>Please let us know if you have any questions.<</p>' & |
          '<</body><</html>'
Attach  = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
```

HTML loaded from a file, database field, TEXT control, or generated runtime string does not need that Clarion source-level escaping. The doubled less-than signs are only for HTML literals typed directly into Clarion source.

## Method 5: Simple HTML header and footer images

Use Simple HTML header and footer images when you want branding above or below an ordinary text body.

This is separate from placing images at arbitrary positions in the body. For body-positioned images with ordinary text, use Method 1.

```clarion
Result      LONG
HeaderImage CSTRING(260)
FooterImage CSTRING(260)

Result = vuResetSimpleHTML()
Result = vuSetSimpleHTML(1)
Result = vuSetSimpleHTMLNormalizeBody(1)

HeaderImage = CLIP(PATH()) & '\CompanyHeader.png'
FooterImage = CLIP(PATH()) & '\CompanyFooter.png'

Result = vuSetSimpleHTMLHeaderImage(HeaderImage)
Result = vuSetSimpleHTMLFooterImage(FooterImage)

Body   = CLIP(CustomerMessageText)
Attach = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
Result = vuResetSimpleHTML()
```

CustomerMessageText can come from a TEXT control, TPS memo, customer note, generated report, template merge, or ordinary string. With vuSetSimpleHTMLNormalizeBody(1), vuMailKit treats it as ordinary text and converts its existing line breaks for HTML display.

## Important NormalizeBody rule

With NormalizeBody on, the body is ordinary text. That is why it is safe for user-entered text and memo fields.

Do not type raw HTML img tags into normalized body text. If you type raw HTML into a normalized body, vuMailKit will escape it and display it as text.

For body-positioned images with normalized text, use the embed-attachments marker and pass local image files or remote image URLs in Attach. For hand-authored img tags, use an external HTML file or turn NormalizeBody off and pass an HTML fragment intentionally.

## Already embedded CID images

If an HTML body already contains cid image references, vuMailKit leaves those references alone. This preserves HTML that was already prepared with embedded Content-ID image references.

## Related pages

- [Send an HTML email](send-an-html-email.md)
- [Send attachments](send-attachments.md)
- [Send a Simple HTML Email with a Company Logo](send-a-simple-html-email-with-a-company-logo.md)
- [Use TokenMerge with email templates](use-tokenmerge-with-email-templates.md)
- [vuSetSimpleHTML](../functions/vuSetSimpleHTML.md)
- [vuSetSimpleHTMLNormalizeBody](../functions/vuSetSimpleHTMLNormalizeBody.md)
- [vuSendMail](../functions/vuSendMail.md)
- [vuSendMailWait](../functions/vuSendMailWait.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)