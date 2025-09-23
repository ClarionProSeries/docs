---
title: "vuCurrentPath"
summary: "Returns the path from which the current program is executing."
description: "Returns the path from which the current program is executing. ### Parameters ### Returns
A null-terminated CSTRING containing the current execution path. ### Examples [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["current", "vuFileTools", "path", "vucurrentpath", "from", "which", "general", "returns", "executing", "Clarion", "program", "Windows"]
function_name: "vuCurrentPath"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCurrentPath()

```Prototype
vuCurrentPath(), CSTRING
```


## Description
Returns the path from which the current program is executing.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A null-terminated CSTRING containing the current execution path.

### Examples

```Clarion
MESSAGE('The program is being run from: ' & vuCurrentPath())

LOC:Path = vuCurrentPath()
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
