---
title: "vuGlobalsGetCodePage"
summary: "Gets the current runtime CodePage text using the legacy vuMail compatibility pattern."
description: "Gets the current runtime CodePage text using the legacy vuMail compatibility pattern. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vuglobalsgetcodepage"]
function_name: "vuGlobalsGetCodePage"
category: "Globals and Configuration"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGlobalsGetCodePage()

```Prototype
vuGlobalsGetCodePage(),CSTRING,PROC,PASCAL,RAW,NAME('vuGlobalsGetCodePage')
```


This function is declared as returning `LONG` at the Clarion boundary for legacy compatibility. The numeric return value is actually the address of a null-terminated C string buffer and can be consumed directly in Clarion string expressions, as shown below.
## Description
Gets the current runtime CodePage text using the same legacy behavior used by the original vuMail product.

## Return value / error codes
- Returns the current CodePage text using the original vuMail legacy text-return style.
- In Clarion, this function can be used directly in text expressions such as `MESSAGE()` and string assignment.
- If no text is available, the result may be empty.

## Example (Clarion)
```clarion
MESSAGE('The current vuMailKit Code Page is: ' & vuGlobalsGetCodePage())
```

## Notes
- Legacy alias: [vuGetCodePage()](vuGetCodePage.md).
- This is a legacy compatibility exception. New text-return APIs should use caller-owned `*CSTRING` output buffers.
- Value is returned from in-memory globals (load with `vuGlobalsLoad()` if needed).

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
