---
title: "vuCPUSpeed"
summary: "Measures the speed of the CPU and returns the value in megahertz."
description: "Measures the speed of the CPU and returns the value in megahertz. ### Parameters ### Returns
The speed of the CPU in megahertz (LONG). ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vucpuspeed", "vuFileTools", "value", "speed", "megahertz", "general", "returns", "measures", "Clarion", "Windows"]
function_name: "vuCPUSpeed"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCPUSpeed()

```Prototype
vuCPUSpeed(), Long
```


## Description
Measures the speed of the CPU and returns the value in megahertz.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
The speed of the CPU in megahertz (LONG).

### Example

```Clarion
MESSAGE('The speed of the processor is approx. ' & vuCPUSpeed() & ' megahertz')
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
