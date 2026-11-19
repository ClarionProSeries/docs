[Home](../index.md) | [All DLL Functions](index.md) | [Using the Template](../template-usage.md)

# CDRestoreWindow

Restore a parent window after a manual dimming request.

## Clarion declaration

```clarion
CDRestoreWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDRestoreWindow')
```

**Parameters:** Parent window handle.

## Example

```clarion
RestoreResult = CDRestoreWindow(0{PROP:Handle})
```

For a synchronous procedure, call Restore when the called procedure returns. Do not restore immediately after a START registration.

For manual dim and restore calls, a positive result normally indicates an accepted state; 0 or a negative status should be checked before relying on the effect. The global template supplies the MAP and LIB linkage automatically.

See [Manual Dimming](../guides/manual-dimming.md), [START Procedures](../guides/started-children.md), and [Troubleshooting](../troubleshooting.md).

[All DLL Functions](index.md) | [Home](../index.md)
