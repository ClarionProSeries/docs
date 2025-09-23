---
title: "vuPrimaryLinkSpeed"
summary: "Retrieves the speed of the primary network connection, in megabits per second (Mbps)."
description: "Retrieves the speed of the primary network connection, in megabits per second (Mbps). ### Parameters ### Returns
- Positive value: Connection speed in Mbps  
- Zero: Unknown speed or not connected  
- Negative value: Error occurred   ### Example Notes Returns the speed of the currently active primary adapter. Useful for checking connection performance and for threshold-based network checks. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "second", "vuprimarylinkspeed", "speed", "network", "retrieves", "connection", "megabits", "primary", "general", "Clarion", "mbps"]
function_name: "vuPrimaryLinkSpeed"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrimaryLinkSpeed()

```Prototype
vuPrimaryLinkSpeed(), LONG
```


## Description
Retrieves the speed of the primary network connection, in megabits per second (Mbps).

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
- Positive value: Connection speed in Mbps  
- Zero: Unknown speed or not connected  
- Negative value: Error occurred  

### Example

```Clarion
RetVal LONG
OutMsg CSTRING(256)

RetVal = vuPrimaryLinkSpeed()

IF (RetVal < 0)
  OutMsg = 'vuPrimaryLinkSpeed error. Return value: ' & FORMAT(RetVal)
ELSIF (RetVal = 0)
  OutMsg = 'Primary link speed is unknown or not connected.'
ELSE
  OutMsg = 'Primary link speed: ' & FORMAT(RetVal) & ' Mbps'
END

MESSAGE(OutMsg, 'vuPrimaryLinkSpeed Test')

```
Notes

Returns the speed of the currently active primary adapter.

Useful for checking connection performance and for threshold-based network checks.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
