[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuWindowsKey(Disable)

```Prototype
vuWindowsKey(LONG), Signed
```


## Description
Modifies the system registry to enable or disable the Windows key on the keyboard. Changes take effect only after the computer is rebooted.

### Parameters

| Parameter | Data Type | Description                                        |
|-----------|-----------|----------------------------------------------------|
| Disable   | LONG      | Set to `1` to disable the Windows key, `0` to enable it. |

### Returns
A BYTE value:  
- `True` if the registry was successfully modified.  
- `False` if the operation failed.

### Example

```Clarion
! Disable the Windows key
vuWindowsKey(1)

! Enable the Windows key
vuWindowsKey(0)
```

### Notes
- Changes do not take effect until the computer is rebooted.  
- Affects all users of the system.  
- Use with caution, as it modifies the Windows registry.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
