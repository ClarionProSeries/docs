---
title: "vuMemoryFree"
summary: "Returns the amount of unused physical memory currently available on the system."
description: "Returns the amount of unused physical memory currently available on the system. ### Parameters ### Returns
A REAL value containing the number of bytes of unused physical memory. ### Example ### Notes
- Value is returned in bytes.  
- Use for monitoring available physical memory in applications that may be memory-intensive. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["unused", "vuFileTools", "amount", "physical", "available", "general", "returns", "Windows", "memory", "Clarion", "system", "currently"]
function_name: "vuMemoryFree"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMemoryFree()

```Prototype
vuMemoryFree(), REAL
```


## Description
Returns the amount of unused physical memory currently available on the system.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A REAL value containing the number of bytes of unused physical memory.

### Example

```Clarion
MESSAGE('This PC has ' & vuMemoryFree() & ' bytes of free memory')
```

### Notes
- Value is returned in bytes.  
- Use for monitoring available physical memory in applications that may be memory-intensive.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
