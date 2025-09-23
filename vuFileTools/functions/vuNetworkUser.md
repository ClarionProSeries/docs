---
title: "vuNetworkUser"
summary: "Returns the network user name of the current process."
description: "Returns the network user name of the current process. ### Parameters ### Returns
A CSTRING containing the network user name of the current process. ### Example ### Notes
- The returned string is null-terminated and can be assigned to any Clarion STRING variable. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["current", "vuFileTools", "networking", "network", "user", "vunetworkuser", "returns", "Clarion", "name", "Windows", "process"]
function_name: "vuNetworkUser"
category: "Networking"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuNetworkUser()

```Prototype
vuNetworkUser(), CSTRING
```


## Description
Returns the network user name of the current process.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A CSTRING containing the network user name of the current process.

### Example

```Clarion
MESSAGE(vuNetworkUser() & ' is the network user')

LOC:NetUser = vuNetworkUser()
```

### Notes
- The returned string is null-terminated and can be assigned to any Clarion STRING variable.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
