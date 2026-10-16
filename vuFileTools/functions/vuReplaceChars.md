---
title: "vuReplaceChars"
summary: "Replaces all occurrences of OldStrg in MainStrg, modifying MainStrg in place."
description: "Legacy in-place substring replacement function; its LONG return is not a CSTRING. Buffer size is not checked."
keywords: ["vuFileTools", "string", "Clarion", "replace", "substring", "legacy", "buffer"]
function_name: "vuReplaceChars"
category: "General"
version_added: "5.0"
last_updated: "2026-10-16"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuReplaceChars(MainStrg, OldStrg, NewStrg)

```Prototype
vuReplaceChars(*CSTRING, *CSTRING, *CSTRING), Long
```

## Description
Replaces every occurrence of OldStrg with NewStrg directly in MainStrg. It does not return a modified string. NewStrg may be shorter or longer than OldStrg.

**Build 209 guidance:** This is the legacy three-parameter function. It has no destination size argument and performs no capacity validation. Prefer [vuReplaceCharsEx](vuReplaceCharsEx.md) in new applications, particularly when replacement may make the text longer.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| MainStrg | CSTRING | Input and output string, modified in place. The caller must allocate enough capacity, including its terminating null byte. |
| OldStrg | CSTRING | Substring to find. |
| NewStrg | CSTRING | Replacement substring. |

The old 256/128/128 example sizes are not requirements. The actual parameters are CSTRING references; their capacities may differ.

### Returns
A LONG with value 1 after the function executes its replacement statement. The function does not count matches or indicate whether a particular occurrence was found; it has no explicit buffer-failure test. The returned LONG is **not** a CSTRING.

### Example

```Clarion
MainStrg CSTRING(256)
OldStrg  CSTRING(128)
NewStrg  CSTRING(128)
Result   LONG

CODE
MainStrg = 'Microsoft Windows XP is no longer supported.'
OldStrg  = 'Windows XP'
NewStrg  = 'Windows Vista'

Result = vuReplaceChars(MainStrg, OldStrg, NewStrg)
MESSAGE(MainStrg)  ! Microsoft Windows Vista is no longer supported.
! Result = 1
```

### Notes

- All occurrences of OldStrg are replaced; string matching follows the underlying PowerBASIC REPLACE statement's behavior.
- MainStrg must have space for the complete resulting text **plus** its null terminator. A Clarion CSTRING(256) has room for 255 text bytes plus one null byte.
- The original function cannot verify capacity and therefore can overrun an undersized destination, particularly with longer replacement text.
- The Build 209 release corrects this documentation but **does not change the legacy function's signature or implementation**.
- The new [vuReplaceCharsEx](vuReplaceCharsEx.md) checks capacity before modifying MainStrg.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
