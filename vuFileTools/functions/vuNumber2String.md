---
title: "vuNumber2String"
summary: "Returns a string containing the number spelled out in words."
description: "Returns a string containing the number spelled out in words. ### Parameters ### Returns
A CSTRING containing the number in word form. ### Example ### Notes
- Useful for converting numeric values to their word equivalents (for example, in checks or reports). [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["string", "vuFileTools", "vunumber", "number", "words", "spelled", "containing", "general", "returns", "Clarion", "Windows"]
function_name: "vuNumber2String"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuNumber2String(Number)

```Prototype
vuNumber2String(LONG), CSTRING
```


## Description
Returns a string containing the number spelled out in words.

### Parameters

| Parameter | Data Type | Description                        |
|-----------|-----------|------------------------------------|
| Number    | LONG      | The number to convert to words.    |

### Returns
A CSTRING containing the number in word form.

### Example

```Clarion
LOC:SpelledNo = vuNumber2String(1234)
MESSAGE('1234 in words is: ' & LOC:SpelledNo)
```

### Notes
- Useful for converting numeric values to their word equivalents (for example, in checks or reports).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
