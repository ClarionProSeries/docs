---
title: "vuServerTime"
summary: "Returns the system time from the specified server in standard Clarion time format."
description: "Returns the system time from the specified server in standard Clarion time format. If no server name is provided, the local PC time is returned. The result is automatically adjusted for time zones. ### Parameters ### Returns
A LONG value containing the time in standard Clarion time format.  
If no server is specified, the local PC time is returned. ### Example ### Notes
- Requires Windows NT 4.0 or higher.  
- Automatically adjusts for time zone differences between client and server.  
- Works with any networked computer, not just dedicated servers.  
- Useful for synchronizing system clocks across a peer-to-peer network or domain. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "specified", "from", "clarion", "vuservertime", "general", "returns", "standard", "format", "system", "Clarion", "server"]
function_name: "vuServerTime"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuServerTime(ServerName)

```Prototype
vuServerTime(*CSTRING), LONG
```


## Description
Returns the system time from the specified server in standard Clarion time format. If no server name is provided, the local PC time is returned. The result is automatically adjusted for time zones.

### Parameters

| Parameter  | Data Type    | Description                                                                 |
|------------|--------------|-----------------------------------------------------------------------------|
| ServerName | CSTRING(128) | The name of the server (e.g., `\\MyServer`). Forward slashes are optional and will be added automatically. |

### Returns
A LONG value containing the time in standard Clarion time format.  
If no server is specified, the local PC time is returned.

### Example

```Clarion
LOC:Server = '\\MyServer'
SetClock(vuServerTime(LOC:Server))
```

### Notes
- Requires Windows NT 4.0 or higher.  
- Automatically adjusts for time zone differences between client and server.  
- Works with any networked computer, not just dedicated servers.  
- Useful for synchronizing system clocks across a peer-to-peer network or domain.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
