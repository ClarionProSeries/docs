[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuElevationType()

```Prototype
vuElevationType(), LONG
```


## Description
Determines the type of user token for the current process.  
This function is often used together with `vuIsElevated()` to better understand the privilege level of your application.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A LONG value indicating the elevation type:  
- 1 = Limited (Standard User)  
- 2 = Elevated (Admin Token)  
- 3 = UAC Disabled or Legacy Admin  
- 0 or negative = Error determining elevation type  

### Example

```Clarion
ElevType     LONG
ElevTypeDesc CSTRING(50)
Msg          CSTRING(256)

  CODE
  ElevType = vuElevationType()

  ElevTypeDesc = 'Unknown'
  IF ElevType = 1
    ElevTypeDesc = 'Limited (Standard User)'
  ELSIF ElevType = 2
    ElevTypeDesc = 'Elevated (Admin Token)'
  ELSIF ElevType = 3
    ElevTypeDesc = 'UAC Disabled or Legacy Admin'
  END

  Msg = 'vuElevationType returned: ' & FORMAT(ElevType) & |
        '<13,10>Description: ' & ElevTypeDesc

  MESSAGE(Msg, 'Elevation Type Test')

```
Notes

Use vuIsElevated() first to determine if the process is elevated.

vuElevationType() provides more detail about the specific elevation context.

Helps you adjust program behavior depending on whether UAC is enabled or disabled.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
