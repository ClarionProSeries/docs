---
title: "Send an HTML Email"
summary: "Start with Simple HTML mode for the easiest HTML email path, then move to external HTML files when you need more control."
description: "Learn the easiest ways to send HTML email with vuMailKit, including Simple HTML mode, optional header and footer images, external UTF-8 files, AI-generated HTML, and TokenMerge."
keywords: ["vuMailKit", "HTML email", "Simple HTML", "Clarion", "UTF-8", "TokenMerge"]
page_type: "guide"
last_updated: "2026-06-24"
---

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send an HTML Email

If you want a good-looking HTML email, start with the Simple HTML functions.

You do not have to create a full HTML wrapper just to send a clean message. Simple HTML mode lets vuMailKit build the wrapper, optionally place an image above and below the body, and use the normal MIME path so the message includes a plain-text alternative.

## Option 1: Simple HTML mode

Use this when you want a clean, branded email without hand-writing a complete HTML document.

```clarion
Result  LONG
FromAdr CSTRING(256)
ToAdr   CSTRING(256)
CCAdr   CSTRING(256)
BCCAdr  CSTRING(256)
Subject CSTRING(256)
Body    CSTRING(2048)
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
Body    = 'Thank you for your business.<13,10>' & |
          'Your order is ready.'
Attach  = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)

! Avoid carrying this Simple HTML setup into a later unrelated send.
Result = vuResetSimpleHTML()
```

With `vuSetSimpleHTMLNormalizeBody(1)`, the body is ordinary text. vuMailKit makes it HTML-safe and converts normal line breaks for HTML display.

If the body is already an HTML fragment, call `vuSetSimpleHTMLNormalizeBody(0)` and pass only the fragment that belongs inside the body area. Do not pass a full HTML document when Simple HTML mode is on.

## Option 2: External HTML file

Use an external file when you want full control over the HTML.

For many developers, this path is:

1. Create an HTML body in an editor or with AI.
2. Save it as an external UTF-8 file.
3. Point vuMailKit at that file.

This avoids Clarion string escaping issues and makes the content easier to maintain.

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
- [vuSetSimpleHTMLHeaderImage](../functions/vuSetSimpleHTMLHeaderImage.md)
- [vuSetSimpleHTMLFooterImage](../functions/vuSetSimpleHTMLFooterImage.md)
- [vuResetSimpleHTML](../functions/vuResetSimpleHTML.md)
- [TokenMergeFileIntoFile](../functions/TokenMergeFileIntoFile.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)
