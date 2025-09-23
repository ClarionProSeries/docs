---
title: "vuMACType"
summary: "Returns the adapter type for the specified network adapter."
description: "Returns the adapter type for the specified network adapter. Use `vuMACCount()` to determine how many adapters are available. ### Parameters ### Returns
A CSTRING containing one of the following adapter types:  
- Ethernet  
- Token Ring  
- FDDI  
- PPP  
- Loop Back  
- SLIP  
- LAN  
- Other   ### Example ### Notes
- Adapter type is determined by the system for the specified index.  
- Combine with `vuMACDesc()` and `vuMACAddress()` for detailed adapter information. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "vumactype", "specified", "network", "type", "general", "returns", "Clarion", "Windows", "adapter"]
function_name: "vuMACType"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMACType(Nmbr)

```Prototype
vuMACType(Long), CSTRING
```


## Description
Returns the adapter type for the specified network adapter. Use `vuMACCount()` to determine how many adapters are available.

### Parameters

| Parameter | Data Type | Description                                                      |
|-----------|-----------|------------------------------------------------------------------|
| Nmbr      | LONG      | Index of the adapter (within the range returned by `vuMACCount()`) |

### Returns
A CSTRING containing one of the following adapter types:  
- Ethernet  
- Token Ring  
- FDDI  
- PPP  
- Loop Back  
- SLIP  
- LAN  
- Other  

### Example

```Clarion
IF vuMACCount() > 0
  MESSAGE('The first adapter detected is ' & vuMACType(1))
END
```

### Notes
- Adapter type is determined by the system for the specified index.  
- Combine with `vuMACDesc()` and `vuMACAddress()` for detailed adapter information.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
