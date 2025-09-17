[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuEnumerateStartupItems(Scope)

```Prototype
vuEnumerateStartupItems(LONG), LONG
```


## Description
Enumerates all items in the Windows Startup folders. Use this function to determine how many startup items exist for a given scope.

### Parameters

| Parameter | Data Type | Description                                                                 |
|-----------|-----------|-----------------------------------------------------------------------------|
| Scope     | LONG      | `0` = Current User Startup, `1` = Common (All Users) Startup.               |

### Returns
A LONG value indicating the number of startup items found.  
Returns 0 if no items are found, or a negative value if an error occurs.

### Example

```Clarion
Scope     LONG
ItemCount LONG
Msg       CSTRING(128)

Scope = 0  ! User Startup
ItemCount = vuEnumerateStartupItems(Scope)

Msg = 'User Startup contains ' & FORMAT(ItemCount) & ' items.'
MESSAGE(Msg, 'vuEnumerateStartupItems Test')

Scope = 1  ! Common Startup
ItemCount = vuEnumerateStartupItems(Scope)

Msg = 'Common Startup contains ' & FORMAT(ItemCount) & ' items.'
MESSAGE(Msg, 'vuEnumerateStartupItems Test')

```
Notes

Use together with vuGetStartupItem to retrieve detailed information about each item.

Scope 0 checks the current users Startup folder; scope 1 checks the system-wide Startup folder.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
