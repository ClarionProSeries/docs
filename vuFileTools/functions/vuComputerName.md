---
title: "vuComputerName"
summary: "Returns the name of the computer on which the application is running."
description: "Returns the name of the computer on which the application is running. ### Parameters ### Returns
A null-terminated CSTRING containing the computer name. ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "vucomputername", "which", "general", "returns", "computer", "Clarion", "name", "Windows", "running", "application"]
function_name: "vuComputerName"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuComputerName()

```Prototype
vuComputerName(), CSTRING
```


## Description
Returns the name of the computer on which the application is running.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A null-terminated CSTRING containing the computer name.

### Example

```Clarion
MESSAGE('The name of this computer is ' & vuComputerName())
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
