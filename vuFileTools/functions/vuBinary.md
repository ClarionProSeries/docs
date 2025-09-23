---
title: "vuBinary"
summary: "Returns the binary representation of a LONG value."
description: "Returns the binary representation of a LONG value. ### Parameters ### Returns
The binary representation of `LongValue`. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "value", "binary", "long", "representation", "general", "returns", "Clarion", "vubinary", "Windows"]
function_name: "vuBinary"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuBinary(LongValue)

```Prototype
vuBinary(Long), CSTRING
```


## Description
Returns the binary representation of a LONG value.

### Parameters

| Parameter | Data Type | Description                   |
|-----------|-----------|-------------------------------|
| LongValue | LONG      | The value to convert to binary |

### Returns
The binary representation of `LongValue`.

### Example

```Clarion
LongValue = 1234
MESSAGE('Binary = ' & vuBinary(LongValue))
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
