[Home](../index.md) | [All DLL Functions](index.md) | [Using the Template](../template-usage.md)

# CDDimWindowEx

Dim a parent window with a chosen overlay color.

## Clarion declaration

```clarion
CDDimWindowEx(LONG,LONG,LONG,LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDDimWindowEx')
```

**Parameters:** Parent window handle; strength (0–255); red, green and blue (0–255 each).

## Example

```clarion
DimResult = CDDimWindowEx(0{PROP:Handle},90,0,120,255)
```

Pair a successful Dim with **CDRestoreWindow**. For automatic colors, use the global or procedure template settings.

For manual dim and restore calls, a positive result normally indicates an accepted state; 0 or a negative status should be checked before relying on the effect. The global template supplies the MAP and LIB linkage automatically.

See [Manual Dimming](../guides/manual-dimming.md), [START Procedures](../guides/started-children.md), and [Troubleshooting](../troubleshooting.md).

[All DLL Functions](index.md) | [Home](../index.md)
