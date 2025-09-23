---
title: "vuMACCount"
summary: "Returns the number of Media Access Control (MAC) adapters found on the PC."
description: "Returns the number of Media Access Control (MAC) adapters found on the PC. ### Parameters ### Returns
LONG containing the number of active adapters on the PC. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["access", "vuFileTools", "number", "adapters", "vumaccount", "found", "general", "returns", "media", "Clarion", "control", "Windows"]
function_name: "vuMACCount"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMACCount()

```Prototype
vuMACCount(), LONG
```


## Description
Returns the number of Media Access Control (MAC) adapters found on the PC.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
LONG containing the number of active adapters on the PC.

### Example

```Clarion
MESSAGE('There were ' & vuMACCount() & ' adapters found on this PC')
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
