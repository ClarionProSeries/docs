---
title: "vuOctal"
summary: "Converts a LONG value into its octal representation."
description: "Converts a LONG value into its octal representation. ### Parameters ### Returns
A CSTRING containing the octal representation of `LongValue`. ### Example ### Notes
- The return value is a string representation of the octal number. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["converts", "vuFileTools", "value", "into", "long", "octal", "representation", "general", "Clarion", "vuoctal", "Windows"]
function_name: "vuOctal"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuOctal(LongValue)

```Prototype
vuOctal(Long), CSTRING
```


## Description
Converts a LONG value into its octal representation.

### Parameters

| Parameter | Data Type | Description                        |
|-----------|-----------|------------------------------------|
| LongValue | LONG      | The number to convert to octal.    |

### Returns
A CSTRING containing the octal representation of `LongValue`.

### Example

```Clarion
LongValue = 1234
MESSAGE('Octal representation: ' & vuOctal(LongValue))
! Result: 2322
```

### Notes
- The return value is a string representation of the octal number.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
