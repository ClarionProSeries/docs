[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuMinimizePrograms(Minimize)

```Prototype
vuMinimizePrograms(LONG), Signed
```


## Description
Minimizes or restores all running programs that support minimize/restore actions.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| Minimize  | LONG      | Set to 1 to minimize all programs. Set to 0 to restore them to prior state. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
! Minimize all programs
vuMinimizePrograms(1)

! Restore all programs
vuMinimizePrograms(0)
```

### Notes
- When called with `1`, all running programs (including Word, Excel, etc.) will be minimized.  
- When called with `0`, programs minimized by the call will be restored.  
- Programs already minimized before the call will remain minimized after restoration.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
