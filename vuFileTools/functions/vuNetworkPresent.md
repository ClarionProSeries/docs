---
title: "vuNetworkPresent"
summary: "Detects whether a network is present and returns the type of network detected."
description: "Detects whether a network is present and returns the type of network detected. ### Parameters ### Returns
A LONG value:  
- 0 = No network  
- 1 = LAN  
- 2 = WAN (Internet)   ### Example ### Notes
- Requires Internet Explorer 5.0 or higher. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "networking", "detects", "vunetworkpresent", "network", "whether", "type", "returns", "detected", "Clarion", "present", "Windows"]
function_name: "vuNetworkPresent"
category: "Networking"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuNetworkPresent()

```Prototype
vuNetworkPresent(), Signed
```


## Description
Detects whether a network is present and returns the type of network detected.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value:  
- 0 = No network  
- 1 = LAN  
- 2 = WAN (Internet)  

### Example

```Clarion
CASE vuNetworkPresent()
OF 0
  MESSAGE('No network detected.')
OF 1
  MESSAGE('LAN connection detected.')
OF 2
  MESSAGE('Internet connection detected.')
END
```

### Notes
- Requires Internet Explorer 5.0 or higher.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
