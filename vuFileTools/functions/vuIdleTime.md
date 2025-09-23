---
title: "vuIdleTime"
summary: "Returns the number of seconds the system has been idle (no keyboard or mouse activity)."
description: "Returns the number of seconds the system has been idle (no keyboard or mouse activity). ### Parameters ### Returns
- LONG containing the number of seconds the PC has been idle.  
- -1 indicates the function failed.   ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["mouse", "vuFileTools", "number", "been", "seconds", "keyboard", "general", "returns", "idle", "activity", "system", "Clarion"]
function_name: "vuIdleTime"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuIdleTime()

```Prototype
vuIdleTime(), Long
```


## Description
Returns the number of seconds the system has been idle (no keyboard or mouse activity).

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
- LONG containing the number of seconds the PC has been idle.  
- -1 indicates the function failed.  

### Example

```Clarion
IdleSecs = vuIdleTime()

IF IdleSecs >= 0
  MESSAGE('System idle for ' & IdleSecs & ' seconds')
ELSE
  MESSAGE('Idle time check failed')
END
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
