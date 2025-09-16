[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuServerDate(ServerName)

```Prototype
vuServerDate(*CSTRING), LONG
```


## Description
Returns the system date from the specified server in standard Clarion date format. If no server name is provided, the local PC date is returned. The result is automatically adjusted for time zones.

### Parameters

| Parameter  | Data Type    | Description                                                                 |
|------------|--------------|-----------------------------------------------------------------------------|
| ServerName | CSTRING(128) | The name of the server (e.g., `\\MyServer`). Forward slashes are optional and will be added automatically. |

### Returns
A LONG value containing the date in standard Clarion date format.  
If no server is specified, the local PC date is returned.

### Example

```Clarion
LOC:Server = '\\MyServer'
ServerDate = vuServerDate(LOC:Server)
MESSAGE('The server date is ' & ServerDate)
```

### Notes
- Requires Windows NT 4.0 or higher.  
- Automatically adjusts for time zone differences between client and server.  
- Works with any networked computer, not just dedicated servers.  
- Useful for keeping systems in sync across a peer-to-peer network or domain.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
