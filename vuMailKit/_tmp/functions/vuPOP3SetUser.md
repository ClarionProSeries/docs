[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3SetUser()

```Prototype
vuPOP3SetUser(*CSTRING InUser),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3SetUser')
```

## Description
Sets the POP3 user name used by vuMailKit POP3 receive operations.

### Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InUser | *CSTRING | The value to store. |

### Returns
Returns 0 (this function always returns 0).

### Example

```Clarion
ROUTINE:Example   ROUTINE
  DATA
RC      LONG
Value   LONG

  CODE
  Value = 'example'
  RC = vuPOP3SetUser(Value)
  STOP('RC=' & RC)
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)