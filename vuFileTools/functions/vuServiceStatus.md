[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuServiceStatus(Server, Service)

```Prototype
vuServiceStatus(*CSTRING,*CSTRING), Long
```


## Description
Returns the status of a Windows service on a specified client or server. Can also be used on the local system when no server name is provided.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| Server    | CSTRING(128) | The name of the server or client PC. Leave blank (`''`) to reference the local PC. Case sensitive. |
| Service   | CSTRING(128) | The name of the service to check. Not case sensitive.                       |

### Returns
A LONG value indicating the status of the service:  
- -1 = Error (invalid server name, service name, not logged in, or insufficient rights)  
- 0 = Service Stopped  
- 1 = Service Stop Pending  
- 2 = Service Paused  
- 3 = Service Pause Pending  
- 4 = Service Start Pending  
- 5 = Service Continue Pending  
- 6 = Service Running  
- 99 = Other  

### Example

```Clarion
sServerName  = 'Bill-PC'
sServiceName = 'Print Spooler'

IF vuServiceStatus(sServerName, sServiceName) = 6
  MESSAGE('The print spooler service is running on ' & sServerName)
END
```

### Notes
- Server name is case sensitive, service name is not.  
- A failed call (such as when the service does not exist or the user lacks permissions) may take several seconds to return.  
- Useful for monitoring critical Windows services locally or across the network.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
