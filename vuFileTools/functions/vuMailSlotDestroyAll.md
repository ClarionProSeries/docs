[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuMailSlotDestroyAll()

```Prototype
vuMailSlotDestroyAll(), Signed
```


## Description
Destroys all mail slots on the local PC.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
IF vuMailSlotDestroyAll()
  MESSAGE('All mail slots destroyed successfully.')
ELSE
  MESSAGE('Failed to destroy all mail slots.')
END
```

### Notes
- Call this function when closing an application that uses mail slots.  
- Ensures all mail slots are destroyed and system resources are released.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
