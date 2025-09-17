[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuEZRegGet(ByUser, KeyName)

```Prototype
vuEZRegGet(LONG,*CSTRING), CSTRING
```


## Description
Retrieves data from the Windows registry that was stored using `vuEZRegPut`. Designed for simplicity, this function does not require knowledge of the registry structure.

### Parameters

| Parameter | Data Type     | Description                                                                 |
|-----------|---------------|-----------------------------------------------------------------------------|
| ByUser    | LONG          | 0 = Retrieve from LOCAL_MACHINE <br> 1 = Retrieve from CURRENT_USER         |
| KeyName   | CSTRING(128)  | Alphanumeric key name under which the data was stored                       |

### Returns
The value retrieved from the registry as a CSTRING.

### Example

```Clarion
! Retrieve data stored for the current user
KeyValue = vuEZRegGet(1, 'MyAppSetting')
```

### Notes
- Data must have been stored previously using `vuEZRegPut`.  
- If the key does not exist, the return value may be blank.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
