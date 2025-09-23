---
title: "vuMACDesc"
summary: "Returns the adapter description for the specified network adapter."
description: "Returns the adapter description for the specified network adapter. Use `vuMACCount()` to determine how many adapters are available. ### Parameters ### Returns
A CSTRING containing the description of the specified adapter. ### Example ### Notes
- Adapter descriptions are provided by the system.  
- Always check `vuMACCount()` before calling `vuMACDesc()` to ensure the index is valid. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["description", "vuFileTools", "vumacdesc", "specified", "network", "general", "returns", "Clarion", "Windows", "adapter"]
function_name: "vuMACDesc"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMACDesc(Nmbr)

```Prototype
vuMACDesc(Long), CSTRING
```


## Description
Returns the adapter description for the specified network adapter. Use `vuMACCount()` to determine how many adapters are available.

### Parameters

| Parameter | Data Type | Description                                                      |
|-----------|-----------|------------------------------------------------------------------|
| Nmbr      | LONG      | Index of the adapter (within the range returned by `vuMACCount()`) |

### Returns
A CSTRING containing the description of the specified adapter.

### Example

```Clarion
IF vuMACCount() > 0
  MESSAGE('The description of my first adapter is ' & vuMACDesc(1))
END
```

### Notes
- Adapter descriptions are provided by the system.  
- Always check `vuMACCount()` before calling `vuMACDesc()` to ensure the index is valid.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
