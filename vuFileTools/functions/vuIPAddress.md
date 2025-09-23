---
title: "vuIPAddress"
summary: "Returns the specified IP address of the PC in dot notation."
description: "Returns the specified IP address of the PC in dot notation. Use `vuIPAddressCount` to determine how many IP addresses are available. ### Parameters ### Returns
A null-terminated CSTRING containing the requested IP address (e.g., `192.168.127.1`). ### Example ### Notes
- Combine with `vuIPAddressCount()` to enumerate all IP addresses assigned to the PC. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "notation", "specified", "address", "general", "returns", "vuipaddress", "Clarion", "Windows"]
function_name: "vuIPAddress"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuIPAddress(IPIndex)

```Prototype
vuIPAddress(LONG), CSTRING
```


## Description
Returns the specified IP address of the PC in dot notation. Use `vuIPAddressCount` to determine how many IP addresses are available.

### Parameters

| Parameter | Data Type | Description                                  |
|-----------|-----------|----------------------------------------------|
| IPIndex   | LONG      | Index of the IP address to return (1 = primary) |

### Returns
A null-terminated CSTRING containing the requested IP address (e.g., `192.168.127.1`).

### Example

```Clarion
! Get the primary IP address
MESSAGE('Primary IP Address = ' & vuIPAddress(1))
```

### Notes
- Combine with `vuIPAddressCount()` to enumerate all IP addresses assigned to the PC.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
