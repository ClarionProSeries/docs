---
title: "vuGetUCodeFile"
summary: "Legacy UCode path helper retained for compatibility."
description: "Legacy UCode path helper retained for compatibility. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vugetucodefile"]
function_name: "vuGetUCodeFile"
category: "Legacy Compatibility"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetUCodeFile()

```Prototype
vuGetUCodeFile(*CSTRING OutFileName),CSTRING,PROC,PASCAL,RAW,NAME('vuGetUCodeFile')
```

## Description
Gets the current UCode file path using the original vuMail compatibility behavior.

## Parameters
- `xIgnored` (*CSTRING): Ignored legacy parameter retained for compatibility.

## Return value / error codes
- Returns text using the original vuMail legacy text-return style.
- In Clarion, this function can be used directly in text expressions such as `MESSAGE()` and string assignment.
- If no text is available, the result may be empty.

## Example (Clarion)
```clarion
ignored CSTRING(1)

ignored = ''
MESSAGE('UCode file: ' & vuGetUCodeFile(ignored))
```

## Notes
- This is a legacy compatibility exception. New text-return APIs should use caller-owned `*CSTRING` output buffers.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
