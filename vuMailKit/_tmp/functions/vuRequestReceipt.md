
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuRequestReceipt()

```Prototype
vuRequestReceipt(),SIGNED,PROC,PASCAL,RAW,NAME('vuRequestReceipt')
```

## Description
Sets the runtime flag that requests a return receipt for the next email sent through vuMailKit.

## Return value
Returns 1 on success.

## Notes
- Set this before sending so the next send operation can apply it.

### Example

````clarion
ROUTINE:Test_vuRequestReceipt   ROUTINE
  DATA
RC      LONG

  CODE
  RC = vuRequestReceipt()
  STOP('RC=' & RC)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)