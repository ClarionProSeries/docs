---
title: "vuMailLastError"
summary: "Gets the current last-error text using the legacy vuMail compatibility pattern using the legacy pointer-to-CString compatibility pattern."
description: "Gets the current last-error text using the legacy vuMail compatibility pattern using the legacy pointer-to-CString compatibility pattern. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vumaillasterror"]
function_name: "vuMailLastError"
category: "Debug and Diagnostics"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailLastError()

```Prototype
vuMailLastError(),CSTRING,PROC,PASCAL,RAW,NAME('vuMailLastError')
```


This legacy function is declared as returning `CSTRING` in Clarion to preserve original vuMail template behavior. Under the hood, the export returns a pointer to a null-terminated C string buffer, and Clarion consumes it directly as text, as shown in the examples below.
## Description
Gets the current last-error text using the original vuMail compatibility behavior.

## Return value / error codes
- Returns the current last-error text using the original vuMail legacy text-return style.
- In Clarion, this function can be used directly in text expressions such as `MESSAGE()` and string assignment.
- Returns a blank string when no error text is currently available.

## Example (Clarion)
```clarion
ROUTINE:Test_vuMailLastError   ROUTINE
DATA
RC  LONG

  CODE
  RC = vuTestSetLastError('This is a forced test error string from Clarion')
  STOP('RC=' & RC & '  vuMailLastError()=' & vuMailLastError())
```

## Notes
- Original vuMail behavior: this returns the last verbose error message as text, and it is blank if no error was generated during the last send.
- Legacy compatibility exception: in the original PowerBasic vuMail code these functions exported a numeric `DWORD` that was actually the address of an internal C string buffer. Clarion can consume that value directly in string expressions, which is why the legacy examples use assignment and `MESSAGE()` style calls because the Clarion prototype is declared as `CSTRING`.
- New text-return APIs should use caller-owned `*CSTRING` output buffers.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
