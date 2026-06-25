
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3SetFolder()

## Clarion prototype

**Prototype:** vuPOP3SetFolder(*CSTRING InFolder), SIGNED, PROC, PASCAL, RAW, NAME('vuPOP3SetFolder')

## Description
Sets the POP3 save folder used by vuMailKit POP3 receive operations.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InFolder | *CSTRING | The value to store. |

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
  RC = vuPOP3SetFolder(Value)
  STOP('RC=' & RC)
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)