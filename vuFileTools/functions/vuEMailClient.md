[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuEmailClient()

```Prototype
vuEMailClient(), CSTRING
```


## Description
Returns the name of the PCs default email client.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A CSTRING containing the name of the default email client (e.g., Outlook, Outlook Express, Thunderbird).

### Example

```Clarion
MESSAGE('My email client is ' & vuEmailClient())
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
