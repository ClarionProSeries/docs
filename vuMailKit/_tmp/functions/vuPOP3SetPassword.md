
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3SetPassword()

## Clarion prototype

**Prototype:** vuPOP3SetPassword(*CSTRING InPassword), SIGNED, PROC, PASCAL, RAW, NAME('vuPOP3SetPassword')

## Description
Sets the POP3 password used by vuMailKit POP3 receive operations.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InPassword | *CSTRING | The value to store. |

## Return value
Returns 0 (this function always returns 0).

## Example (Clarion)

```Clarion
ROUTINE:Example   ROUTINE
  DATA
RC      LONG
Value   LONG

  CODE
  Value = 'example'
  RC = vuPOP3SetPassword(Value)
  STOP('RC=' & RC)
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)