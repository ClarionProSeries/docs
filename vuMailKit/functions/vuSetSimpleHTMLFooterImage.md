---
title: "vuSetSimpleHTMLFooterImage"
summary: "Sets the optional footer image used by Simple HTML mode."
description: "vuSetSimpleHTMLFooterImage sets the optional footer image file used when Simple HTML mode wraps the body in an HTML container."
keywords: ["vuMailKit", "Simple HTML", "footer image", "Clarion"]
function_name: "vuSetSimpleHTMLFooterImage"
function_type: "runtime setting"
category: "Mailing Related"
version_added: "2026.04"
last_updated: "2026-04-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetSimpleHTMLFooterImage()

## Clarion prototype

**Prototype:** vuSetSimpleHTMLFooterImage(*CSTRING InFooterImageFile), SIGNED, PROC, PASCAL, RAW, NAME('vuSetSimpleHTMLFooterImage')

Sets the optional footer image file used by Simple HTML mode.

## Parameters

| Name | Description |
|---|---|
| InFooterImageFile | Image file path or file name to place below the body content. Pass a blank string to clear it. |

## Example (Clarion)
```clarion
rc          LONG
footerImage CSTRING(260)

footerImage = 'C:\Images\CompanyFooter.png'

rc = vuSetSimpleHTMLFooterImage(footerImage)
IF rc = 0
  MESSAGE('Footer image was not accepted: ' & vuMailLastError())
END
```

## Notes

- This image is inserted below the body area inside the generated HTML wrapper.
- Use [vuResetSimpleHTML](vuResetSimpleHTML.md) if you want to clear all Simple HTML state at once.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
