[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuShutDown(Action)

```Prototype
vuShutdown(LONG), Signed
```


## Description
Logs off, reboots, or powers down the PC depending on the action specified.

### Parameters

| Parameter | Data Type | Description                                      |
|-----------|-----------|--------------------------------------------------|
| Action    | LONG      | Shutdown action:<br>1 = Log Off<br>2 = Reboot<br>3 = Power Down |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
! Reboot the PC
vuShutDown(2)

! Application should terminate immediately after this call
RETURN
```

### Notes
- You should immediately exit your program after calling this function.  
- Requires sufficient user rights to perform shutdown or reboot actions.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
