[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuIsAdmin()

```Prototype
vuIsAdmin(), Signed
```


## Description
Determines whether the current user belongs to an Administrator account. Useful for checking if the program has sufficient privileges to perform system-level functions.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
1 (True) if the current user is an administrator, 0 (False) otherwise.

### Example

```Clarion
IF vuIsAdmin() = 0
  MESSAGE('This action can only be performed by an Administrator')
END
```

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
