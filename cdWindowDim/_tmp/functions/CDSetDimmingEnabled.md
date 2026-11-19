[Home](../index.md) | [All DLL Functions](index.md) | [Using the Template](../template-usage.md)

# CDSetDimmingEnabled

Enable or disable the dimming effect while the application runs.

## Clarion declaration

```clarion
CDSetDimmingEnabled(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDSetDimmingEnabled')
```

**Parameters:** 1 to enable; 0 to disable.

## Example

```clarion
CDSetDimmingEnabled(1) ! Enable
CDSetDimmingEnabled(0) ! Disable
```

The global template also provides **Enable Dimming** and **Disable Dimming** code templates.

For manual dim and restore calls, a positive result normally indicates an accepted state; 0 or a negative status should be checked before relying on the effect. The global template supplies the MAP and LIB linkage automatically.

See [Manual Dimming](../guides/manual-dimming.md), [START Procedures](../guides/started-children.md), and [Troubleshooting](../troubleshooting.md).

[All DLL Functions](index.md) | [Home](../index.md)
