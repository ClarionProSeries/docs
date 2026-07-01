
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send a Simple HTML Email with a Company Logo

Simple HTML mode gives you an easy way to send a cleaner-looking HTML email without hand-coding a full HTML document.

This is included in **vuMailKit Basic**.

The important point is that you do **not** have to create the HTML wrapper yourself. Turn Simple HTML on, pass the body content, optionally set header and footer images, and vuMailKit builds the message as HTML while still using the normal MIME path that creates a plain-text alternative.

That makes this the first HTML option most developers should try.

## What Simple HTML mode does

When Simple HTML mode is on, vuMailKit:

- creates a modest HTML wrapper for you
- inserts an optional header image above the message body
- inserts an optional footer image below the message body
- places your body content in the center area
- uses the normal HTML send path so the plain-text alternative is generated

## Important body rule

When Simple HTML mode is enabled, the body should contain the **message body only**.

Do **not** pass a full HTML document with html, head, or body tags when Simple HTML mode is active.

## Simplest body pattern

For most messages, keep body normalization on and pass ordinary text:

```clarion
Result = vuSetSimpleHTML(1)
Result = vuSetSimpleHTMLNormalizeBody(1)

! Body can be the text from a TEXT control, TPS memo, customer note,
! report output, or any plain text string your application builds.
Body = CLIP(CustomerMessageText)
```

CustomerMessageText can contain normal line breaks exactly as the user typed them. vuMailKit escapes HTML-sensitive characters and converts those line breaks for HTML display. Do not add &lt;br&gt; or &lt;p&gt; tags unless you are intentionally supplying an HTML fragment and have turned normalization off.

## Body-positioned images without hand-coded HTML

Header and footer images are good for branding. If you want images inside the body text, keep Simple HTML and NormalizeBody on and use the embed-attachments marker.

The TEXT control or memo can contain ordinary text like this:

```text
Here are the photos from today's service call:

_embed attachments width=600_

Please call us if you have any questions.
```

Then pass the local image files or remote http/https image URLs in Attach:

```clarion
Result = vuSetSimpleHTML(1)
Result = vuSetSimpleHTMLNormalizeBody(1)

Body   = CLIP(CustomerMessageText)
Attach = 'C:\ServicePhotos\Photo1.jpg;C:\ServicePhotos\Photo2.jpg'

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
```

vuMailKit replaces the marker with inline images and does not send those consumed image resources as normal attachments. For more body-image examples, see [Send an embedded image](send-an-embedded-image.md).

## End-to-end example

**NOTE:** In the code example below, we use &lt;13,10&gt; to show how to enter a CRLF in code, but you can simply use text from a TEXT control and the **vuSetSimpleHTMLNormalizeBody(1)** function will automatically convert it to HTML for you.


```clarion
Result      LONG
FromAdr     CSTRING(256)
ToAdr       CSTRING(256)
CCAdr       CSTRING(256)
BCCAdr      CSTRING(256)
Subject     CSTRING(256)
Body        CSTRING(2048)
BodyText    CSTRING(2048)
Attach      CSTRING(260)
HeaderImage CSTRING(260)
FooterImage CSTRING(260)

Result = vuResetSimpleHTML()
Result = vuSetSimpleHTML(1)

! Use 1 when Body is ordinary text.
! Use 0 when Body is already an HTML fragment.
Result = vuSetSimpleHTMLNormalizeBody(1)

! Optional: image above the body area.
HeaderImage = CLIP(PATH()) & '\CompanyHeader.png'
Result = vuSetSimpleHTMLHeaderImage(HeaderImage)

! Optional: image below the body area.
FooterImage = CLIP(PATH()) & '\CompanyFooter.png'
Result = vuSetSimpleHTMLFooterImage(FooterImage)

FromAdr = ''
ToAdr   = 'customer@example.com'
CCAdr   = ''
BCCAdr  = ''
Subject = 'Thank you for your order'
! This sample hard-codes the text so the example is self-contained.
! In a real program, BodyText is usually filled from a TEXT control,
! TPS memo, customer note, template merge, or generated report text.
! It is plain text, not HTML.
BodyText = 'Dear Customer,<13,10><13,10>' & |
           'Your order is ready.<13,10><13,10>' & |
           'Thank you for your business.'
Body     = CLIP(BodyText)
Attach   = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END

! Clear Simple HTML settings so the next unrelated send starts clean.
Result = vuResetSimpleHTML()
```

## Plain text body

With NormalizeBody on, vuMailKit treats the body as ordinary text. It normalizes line endings, converts them into HTML-friendly breaks, and safely escapes HTML-sensitive characters.

That is the easiest setting when you are building the body from normal text fields, a memo, a TPS record, generated text, or a simple Clarion string. If you hard-code a multi-line sample in Clarion source, you still have to put line breaks into the Clarion string. If the text already comes from a TEXT control or memo, you can pass it as-is.

## HTML fragment body

With NormalizeBody off, vuMailKit treats the body as an HTML fragment and inserts it as supplied.

Use this when you already have a body fragment such as:

```html
<p>Dear [[CustomerName]],</p>
<p><b>Your invoice is ready.</b></p>
<p>Thank you.</p>
```

That fragment should still be only the body area. Do not include a full HTML document when Simple HTML mode is active.

## How this works with TokenMerge

The cleanest order is usually:

1. Build or merge the body content first.
2. Turn on Simple HTML mode.
3. Set optional header and footer images.
4. Send the email.
5. Reset Simple HTML mode.

That means you can combine Simple HTML mode with:

- [TokenMergeInString](../functions/TokenMergeInString.md)
- [TokenMergeInFile](../functions/TokenMergeInFile.md)
- [TokenMergeFileIntoFile](../functions/TokenMergeFileIntoFile.md)

## Why this is useful

Simple HTML mode is a good fit for common business messages such as:

- confirmations
- service reminders
- payment reminders
- appointment notices
- invoices or statements with a small branded header
- support messages that need to look more professional than plain text

You can get a well-dressed email without asking every developer to learn the details of HTML email wrappers and multipart MIME.

## Related pages

- [Send an HTML email](send-an-html-email.md)
- [Use TokenMerge with email templates](use-tokenmerge-with-email-templates.md)
- [Send a form-letter invoice email with an optional personal message](send-a-form-letter-invoice-email-with-an-optional-personal-message.md)
- [vuSetSimpleHTML](../functions/vuSetSimpleHTML.md)
- [vuSetSimpleHTMLNormalizeBody](../functions/vuSetSimpleHTMLNormalizeBody.md)
- [vuResetSimpleHTML](../functions/vuResetSimpleHTML.md)
- [vuSendMail](../functions/vuSendMail.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)