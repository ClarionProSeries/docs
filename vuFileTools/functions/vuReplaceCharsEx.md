---
title: "vuReplaceCharsEx"
summary: "Safely replaces substrings in MainStrg using the caller-supplied CSTRING capacity."
description: "Buffer-aware in-place substring replacement. Returns 1 on completion and 0 when validation or capacity checks fail, preserving MainStrg on failure."
keywords: ["vuFileTools", "string", "Clarion", "replace", "substring", "capacity", "buffer"]
function_name: "vuReplaceCharsEx"
category: "General"
version_added: "5.0 Build 209"
last_updated: "2026-10-16"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuReplaceCharsEx(MainStrg, MainSize, OldStrg, NewStrg)

```Prototype
vuReplaceCharsEx(*CSTRING,LONG,*CSTRING,*CSTRING), Long
```

## Description
Replaces all occurrences of OldStrg with NewStrg inside MainStrg. The caller supplies MainStrg's total allocated buffer capacity so the function can verify the **entire result** will fit, including the terminating null byte, before changing MainStrg.

This is the recommended alternative to the legacy [vuReplaceChars](vuReplaceChars.md) function for new applications.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| MainStrg | CSTRING | Destination CSTRING, updated in place only after validation succeeds. Must be null-terminated within MainSize bytes. |
| MainSize | LONG | **Total allocated bytes** of MainStrg including the terminating null. For a Clarion CSTRING, normally pass SIZE(MainStrg). This value must reflect the actual buffer capacity. |
| OldStrg | CSTRING | Substring to find. Must not be empty. |
| NewStrg | CSTRING | Replacement substring. May be empty, shorter, or longer than OldStrg. |

### Returns

| LONG return | Meaning |
|-------------|---------|
| 1 | The operation completed. If no occurrences of OldStrg were present, MainStrg stays unchanged and the function still returns 1. |
| 0 | Validation failed: invalid MainSize, empty OldStrg, missing null terminator within the supplied buffer, or a replacement result too large to fit. MainStrg is left unchanged. |

The returned LONG is not the resulting string and does not count replacements.

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

Result = vuReplaceCharsEx(MainStrg, SIZE(MainStrg), OldStrg, NewStrg)
IF Result = 1
  MESSAGE(MainStrg)  ! Microsoft Windows Vista is no longer supported.
ELSE
  MESSAGE('Replacement failed or destination too small.')
END
```

### Notes

- All replacements are calculated in temporary storage; MainStrg is written only when the result is known to fit.
- `CSTRING(256)` has capacity for 255 text bytes plus one null terminator. Passing `SIZE(MainStrg)` supplies the full 256-byte capacity.
- A result with exactly MainSize minus one text bytes fits. A result requiring MainSize or more text bytes is rejected.
- The source must contain a null terminator within the supplied MainSize. MainSize must not exceed the real buffer allocation.
- OldStrg and NewStrg must be valid null-terminated CSTRINGs. The function cannot independently determine their allocated lengths.
- A return of 1 does not prove that a match occurred.
- The old three-parameter [vuReplaceChars](vuReplaceChars.md) remains available without a calling-convention change, but cannot make capacity guarantees.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
