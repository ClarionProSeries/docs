[Home](../index.md) | [All DLL Functions](index.md) | [Using the Template](../template-usage.md)

# CDWindowRegisterChild

Associate a START-launched child with its dimmed parent.

## Clarion declaration

```clarion
CDWindowRegisterChild(LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDWindowRegisterChild')
```

**Parameters:** Parent window handle; the thread number returned by START.

## Example

```clarion
DimResult = CDDimWindow(0{PROP:Handle},90)
StartedThread = START(MyChildWindow,25000)
RegisterResult = CDWindowRegisterChild(0{PROP:Handle},StartedThread)
```

In the started child, add the **Started Child Closing** code template or call **CDWindowClosing(THREAD())** as the child closes.

For manual dim and restore calls, a positive result normally indicates an accepted state; 0 or a negative status should be checked before relying on the effect. The global template supplies the MAP and LIB linkage automatically.

See [Manual Dimming](../guides/manual-dimming.md), [START Procedures](../guides/started-children.md), and [Troubleshooting](../troubleshooting.md).

[All DLL Functions](index.md) | [Home](../index.md)
