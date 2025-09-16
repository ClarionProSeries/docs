[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

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

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
