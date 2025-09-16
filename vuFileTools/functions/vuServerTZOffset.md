[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuServerTZOffset(ServerName)

```Prototype
vuServerTZOffset(*CSTRING), LONG
```


## Description
Returns the time zone bias, in minutes, of the specified server (or local PC) relative to UTC.

### Parameters

| Parameter  | Data Type    | Description                                                                 |
|------------|--------------|-----------------------------------------------------------------------------|
| ServerName | CSTRING(256) | The name of the server (e.g., `\\MyServer`). Forward slashes are optional and will be added automatically. |

### Returns
A CSTRING containing the bias, in minutes, of the PCs time zone offset from UTC.  
For example, Eastern Standard Time returns 300 (5 hours from UTC).

### Example

```Clarion
LOC:Server = '\\MyServer'
Offset = vuServerTZOffset(LOC:Server)
MESSAGE('Timezone offset in minutes: ' & Offset)
```

### Notes
- Requires Windows NT 4.0 or higher.  
- Positive values indicate minutes offset from UTC.  
- Useful for determining or compensating for time zone differences across systems.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
