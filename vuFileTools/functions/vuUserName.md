[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuUserName()

```Prototype
vuUserName(), CSTRING
```


## Description
Retrieves the name of the current user logged into the PC.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A CSTRING containing the name of the current PC user.

### Example

```Clarion
MESSAGE(vuUserName() & ' is currently using this machine')
```

### Notes
- Returns the Windows login name of the user currently authenticated on the system.  
- Useful for logging, personalization, or tracking user activity.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
