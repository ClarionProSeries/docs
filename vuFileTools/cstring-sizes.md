---
title: "CSTRING Sizes and Buffer Capacity"
summary: "How to choose Clarion CSTRING sizes and distinguish example declarations from implementation limits in vuFileTools."
description: "Explains example CSTRING lengths, null terminators, destination capacity, and function-specific limits."
keywords: ["CSTRING", "buffers", "sizes", "capacity", "Clarion", "vuFileTools"]
page_type: "overview"
last_updated: "2026-10-16"
---

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# CSTRING Sizes and Buffer Capacity

## Sizes in examples are not fixed requirements

Many vuFileTools function pages show declarations such as `CSTRING(256)` or `CSTRING(260)`. These are **example buffer sizes**, not universal limits on the CSTRING variables you may declare in Clarion. For input parameters shown as `*CSTRING`, choose a declaration large enough for the text your application needs to supply.

For example, `vuRun()` accepts a command-line string and does **not** have an internal 256-character string buffer:

```Clarion
Filename CSTRING(1024)
WStyle   LONG
Wait     LONG
Ret      LONG

Filename = '"C:\Program Files\MyApp\MyTool.exe" /x /y'
WStyle   = 1
Wait     = 0
Ret = vuRun(Filename, WStyle, Wait)
```

`CSTRING(1024)` has space for **up to 1,023 characters of text plus the terminating null byte**. The example does not guarantee that Windows can run every path or command line of that length.

## The called function can have its own limits

A larger caller-side CSTRING does not increase the size of a buffer inside a function or remove limits in Windows APIs:

- **`vuRun()`** passes the command-line string to PowerBASIC's `SHELL` operation without a fixed 256-character local buffer. Normal Windows and shell command-line limitations still apply.
- **`vuRunDelay()`, the RunEx family, `vuRunExists()` and `vuRunExistsEx()`** use one or more internal 1,024-byte null-terminated buffers for paths, parameters, or working folders. The text copied into one of these buffers must fit (at most 1,023 characters plus the null byte). Supplying a larger CSTRING does not avoid that internal restriction; an oversized value may be truncated.
- **`vuShell()`** copies the filename into a `%MAX_PATH` buffer. Do not assume it accepts a longer path merely because the caller uses `CSTRING(1024)`. Other ShellEx variants use internal 1,024-byte buffers.

These are implementation facts, not a promise that Windows accepts all values within those sizes. Always consult the individual function's notes for other restrictions.

## Input strings versus output and in-place strings

For an input-only CSTRING, provide sufficient space for the input text and the trailing null. For output and in-place parameters, provide sufficient **destination capacity**, including the terminating null byte.

`vuReplaceCharsEx()` is an example of a safer in-place operation because it receives the destination capacity explicitly:

```Clarion
MainStrg CSTRING(1024)
OldStrg  CSTRING(20)
NewStrg  CSTRING(40)
Ret      LONG

Ret = vuReplaceCharsEx(MainStrg, SIZE(MainStrg), OldStrg, NewStrg)
```

It validates that the *entire result* fits before modifying `MainStrg`. The legacy `vuReplaceChars()` function does not check destination capacity. See [vuReplaceCharsEx](functions/vuReplaceCharsEx.md) for behavior and return values.

**Rule of thumb:** Choose caller-side CSTRING sizes for the data you expect, but do not interpret sample sizes as function limits or assume a bigger variable overrides a function's internal buffers.

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)
