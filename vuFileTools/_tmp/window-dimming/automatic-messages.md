
[Home](../index.md) | [Window Dimming](index.md)

# Automatic Message Dimming

When Window Dimming is enabled, supported `MESSAGE()`, `STOP()` and `HALT()` dialogs automatically dim the window behind them, including ordinary Clarion-generated confirmation messages. Supported CapeSoft MessageBox windows also work automatically.

In **vuFileTools Initialization** > **Window Dimming**, uncheck **Disable window dimming templates**, then generate and compile. **Auto-dim MESSAGE / STOP / HALT** is already checked. No changes to your existing MESSAGE calls are necessary.

## Optional settings

- To turn off automatic MESSAGE dimming for an APP, clear **Auto-dim MESSAGE / STOP / HALT** in the global extension.
- To turn it off for a particular window, use **Disable message dimming here** in that window's **vuFileTools - Window and Message Dimming** procedure extension.
- For a black, blue or red overlay on a particular call, see [Custom Colored Message Procedures](custom-messages.md).
- For your own message replacement window, see [Custom Message Windows](custom-message-windows.md).

The running EXE must include a Windows 8-or-later compatibility manifest. See [Troubleshooting](troubleshooting.md).

[Home](../index.md) | [Window Dimming](index.md)