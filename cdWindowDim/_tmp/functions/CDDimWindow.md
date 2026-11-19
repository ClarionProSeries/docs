[Home](../index.md) | [All DLL Functions](index.md) | [Using the Template](../template-usage.md)

# CDDimWindow

Dim a parent window using the standard black overlay.

## Clarion declaration

```clarion
CDDimWindow(LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDDimWindow')
```

**Parameters:** Parent window handle; strength from 0 to 255.

## Example

```clarion
DimResult = CDDimWindow(0{PROP:Handle},90)
```

Pair a successful Dim with **CDRestoreWindow** after the synchronous call, or use the START child helpers for a started procedure.

For manual dim and restore calls, a positive result normally indicates an accepted state; 0 or a negative status should be checked before relying on the effect. The global template supplies the MAP and LIB linkage automatically.

See [Manual Dimming](../guides/manual-dimming.md), [START Procedures](../guides/started-children.md), and [Troubleshooting](../troubleshooting.md).

[All DLL Functions](index.md) | [Home](../index.md)
