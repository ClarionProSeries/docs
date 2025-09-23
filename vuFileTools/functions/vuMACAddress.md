---
title: "vuMACAddress"
summary: "Returns the MAC address of the specified network adapter."
description: "Returns the MAC address of the specified network adapter. Use `vuMACCount()` to determine how many adapters are available. ### Parameters ### Returns
A CSTRING containing the MAC address in the format `XX-XX-XX-XX-XX-XX` (hexadecimal pairs). ### Example ### Notes
- MAC addresses are returned as hexadecimal pairs separated by hyphens.  
- Combine with `vuMACCount()` to enumerate all adapters. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "specified", "network", "address", "general", "returns", "Clarion", "vumacaddress", "Windows", "adapter"]
function_name: "vuMACAddress"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMACAddress(Nmbr)

```Prototype
vuMACAddress(Long), CSTRING
```


## Description
Returns the MAC address of the specified network adapter. Use `vuMACCount()` to determine how many adapters are available.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| Nmbr      | LONG      | Index of the adapter (within the range returned by `vuMACCount()`)          |

### Returns
A CSTRING containing the MAC address in the format `XX-XX-XX-XX-XX-XX` (hexadecimal pairs).

### Example

```Clarion
IF vuMACCount() > 0
  MESSAGE('My MAC address for adapter 1 is ' & vuMACAddress(1))
END
```

### Notes
- MAC addresses are returned as hexadecimal pairs separated by hyphens.  
- Combine with `vuMACCount()` to enumerate all adapters.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
