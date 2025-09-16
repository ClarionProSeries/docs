[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuNetworkUser()

```Prototype
vuNetworkUser(), CSTRING
```


## Description
Returns the network user name of the current process.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters. |

### Returns
A CSTRING containing the network user name of the current process.

### Example

```Clarion
MESSAGE(vuNetworkUser() & ' is the network user')

LOC:NetUser = vuNetworkUser()
```

### Notes
- The returned string is null-terminated and can be assigned to any Clarion STRING variable.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
