---
title: "vuHexadecimal"
summary: "Converts a LONG value into its hexadecimal representation."
description: "Converts a LONG value into its hexadecimal representation. ### Parameters ### Returns
A CSTRING containing the hexadecimal representation of `LongValue`. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["converts", "vuFileTools", "value", "into", "vuhexadecimal", "representation", "general", "hexadecimal", "Clarion", "long", "Windows"]
function_name: "vuHexadecimal"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuHexadecimal(LongValue)

```Prototype
vuHexadecimal(Long), CSTRING
```


## Description
Converts a LONG value into its hexadecimal representation.

### Parameters

| Parameter | Data Type | Description                          |
|-----------|-----------|--------------------------------------|
| LongValue | LONG      | The value to convert to hexadecimal  |

### Returns
A CSTRING containing the hexadecimal representation of `LongValue`.

### Example

```Clarion
LongValue = 1234
MESSAGE('Hex value = ' & vuHexadecimal(LongValue))   ! Returns 4D2
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
