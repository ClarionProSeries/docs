---
title: "vuHideStartButton"
summary: "Hides or shows the Windows Start button based on the specified flag."
description: "Hides or shows the Windows Start button based on the specified flag. ### Parameters ### Returns
Always returns 1 (True). ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["windows", "vuFileTools", "specified", "flag", "button", "start", "general", "hides", "Clarion", "based", "shows", "Windows"]
function_name: "vuHideStartButton"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuHideStartButton(vFlag)

```Prototype
vuHideStartButton(LONG), Signed
```


## Description
Hides or shows the Windows Start button based on the specified flag.

### Parameters

| Parameter | Data Type | Description                           |
|-----------|-----------|---------------------------------------|
| vFlag     | LONG      | 1 = Hide the Start button <br> 0 = Show the Start button |

### Returns
Always returns 1 (True).

### Example

```Clarion
! Hide the Start button
vuHideStartButton(1)

! Show the Start button
vuHideStartButton(0)
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
