---
title: "Send a Simple HTML Email with a Company Logo"
summary: "Turn ordinary body text and optional company images into a clean HTML email without hand-coding a complete HTML message."
description: "Simple HTML mode lets vuMailKit Basic wrap body content in a modest HTML container, optionally insert a header image and footer image, and keep using the normal send functions and MIME body generation."
keywords: ["vuMailKit", "Simple HTML", "company logo", "Clarion", "HTML email"]
page_type: "how-to"
last_updated: "2026-06-24"
---

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

## End-to-end example

```clarion
Result      LONG
FromAdr     CSTRING(256)
ToAdr       CSTRING(256)
CCAdr       CSTRING(256)
BCCAdr      CSTRING(256)
Subject     CSTRING(256)
Body        CSTRING(2048)
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
Body    = 'Dear Customer,<13,10>' & |
          'Your order is ready.<13,10>' & |
          'Thank you for your business.'
Attach  = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END

! Clear Simple HTML settings so the next unrelated send starts clean.
Result = vuResetSimpleHTML()
```

## Plain text body

With NormalizeBody on, vuMailKit treats the body as ordinary text. It normalizes line endings, converts them into HTML-friendly breaks, and safely escapes HTML-sensitive characters.

That is the easiest setting when you are building the body from normal text fields, a memo, a TPS record, or a simple Clarion string.

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
- [vuResetSimpleHTML](../functions/vuResetSimpleHTML.md)
- [vuSendMail](../functions/vuSendMail.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)
