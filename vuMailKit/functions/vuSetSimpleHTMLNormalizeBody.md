---
title: "vuSetSimpleHTMLNormalizeBody"
summary: "Controls whether Simple HTML treats the body as ordinary text or as an HTML fragment."
description: "vuSetSimpleHTMLNormalizeBody controls how vuMailKit prepares the center body content when Simple HTML mode is active."
keywords: ["vuMailKit", "Simple HTML", "NormalizeBody", "Clarion"]
function_name: "vuSetSimpleHTMLNormalizeBody"
function_type: "runtime setting"
category: "Mailing Related"
version_added: "2026.04"
last_updated: "2026-06-26"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetSimpleHTMLNormalizeBody()

## Clarion prototype

**Prototype:** vuSetSimpleHTMLNormalizeBody(LONG InState), SIGNED, PROC, PASCAL, RAW, NAME('vuSetSimpleHTMLNormalizeBody')

Controls how the center body content is prepared when Simple HTML mode is active.

## Parameters

| Name | Description |
|---|---|
| InState | 0 inserts the body as an HTML fragment exactly as supplied. Any non-zero value treats the body as ordinary text, normalizes line endings, converts them into HTML-friendly breaks, and safely escapes HTML-sensitive characters. |

## Example (Clarion)
```clarion
rc      LONG
cBody   CSTRING(4096)

rc = vuSetSimpleHTML(1)

! Use ordinary text in the email body and let vuMailKit make it HTML-safe.
rc = vuSetSimpleHTMLNormalizeBody(1)

! cBody can be text from a TEXT control, TPS memo, customer note,
! generated report, or any plain text string your program builds.
cBody = CLIP(CustomerMessageText)

! Use this instead when cBody already contains an HTML fragment.
! rc = vuSetSimpleHTMLNormalizeBody(0)
```

## Notes

- The default after [vuResetSimpleHTML](vuResetSimpleHTML.md) is on.
- Use TRUE when the body is ordinary text.
- With normalization on, callers do not need to insert &lt;br&gt;, &lt;p&gt;, or hard-coded CRLF values just to preserve normal line breaks. If the body already comes from a TEXT control, TPS memo, customer note, generated report, or similar field, pass the text as-is and let vuMailKit convert the existing line breaks for HTML display.
- Use FALSE when the body is already an HTML fragment and should be inserted as-is.
- With normalization on, do not put raw HTML img tags in the body text. They will be escaped and displayed as text. To place images inside an ordinary normalized body, put the embed-attachments marker where the images should appear and pass local image files or remote http/https image URLs in the Attach parameter. See [Send an embedded image](../getting-started/send-an-embedded-image.md).

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
