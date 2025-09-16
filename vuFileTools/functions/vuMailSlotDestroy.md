[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuMailSlotDestroy(SlotName)

```Prototype
vuMailSlotDestroy(*CSTRING), Signed
```


## Description
Destroys a previously created mail slot, releasing the associated system resources.

### Parameters

| Parameter | Data Type    | Description                           |
|-----------|--------------|---------------------------------------|
| SlotName  | CSTRING(256) | The name of the mail slot to destroy. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
SlotName = 'Transactions'
IF vuMailSlotDestroy(SlotName)
  MESSAGE('Mail slot destroyed successfully.')
ELSE
  MESSAGE('Failed to destroy mail slot.')
END
```

### Notes
- Always destroy mail slots before your application terminates.  
- This prevents memory leaks and ensures system resources are released properly.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
