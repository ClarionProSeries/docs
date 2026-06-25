---
title: "vuSetSimpleHTMLHeaderImage"
summary: "Sets the optional header image used by Simple HTML mode."
description: "vuSetSimpleHTMLHeaderImage sets the optional header image file used when Simple HTML mode wraps the body in an HTML container."
keywords: ["vuMailKit", "Simple HTML", "header image", "Clarion"]
function_name: "vuSetSimpleHTMLHeaderImage"
function_type: "runtime setting"
category: "Mailing Related"
version_added: "2026.04"
last_updated: "2026-04-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetSimpleHTMLHeaderImage()

## Clarion prototype

**Prototype:** vuSetSimpleHTMLHeaderImage(*CSTRING InHeaderImageFile), SIGNED, PROC, PASCAL, RAW, NAME('vuSetSimpleHTMLHeaderImage')

Sets the optional header image file used by Simple HTML mode.

## Parameters

| Name | Description |
|---|---|
| InHeaderImageFile | Image file path or file name to place above the body content. Pass a blank string to clear it. |

## Example (Clarion)
```clarion
rc          LONG
headerImage CSTRING(260)

headerImage = 'C:\Images\CompanyHeader.png'

rc = vuSetSimpleHTMLHeaderImage(headerImage)
IF rc = 0
  MESSAGE('Header image was not accepted: ' & vuMailLastError())
END
```

## Notes

- This uses the same general image-path behavior the existing HTML image handling already uses.
- A bare file name can be used when that already works in your current vuMailKit image workflow.
- The image is part of the HTML version of the message. Plain-text readers rely on the plain-text alternative instead.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
