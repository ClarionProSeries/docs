---
title: "vuIPAddressCount"
summary: "Returns the number of IP addresses configured on the PC."
description: "Returns the number of IP addresses configured on the PC. Multiple IP addresses may exist due to multiple NICs, modems, or virtual adapters. ### Parameters ### Returns
LONG containing the number of IP addresses configured on the PC. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "number", "vuipaddresscount", "configured", "general", "returns", "Clarion", "addresses", "Windows"]
function_name: "vuIPAddressCount"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuIPAddressCount()

```Prototype
vuIPAddressCount(), LONG
```


## Description
Returns the number of IP addresses configured on the PC. Multiple IP addresses may exist due to multiple NICs, modems, or virtual adapters.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
LONG containing the number of IP addresses configured on the PC.

### Example

```Clarion
MESSAGE('This PC has ' & vuIPAddressCount() & ' IP addresses assigned')
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
