[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](../guides/index.md) | [What's New](../whatsnew.md)

# cdWindowDim - DLL Function Reference

These functions are available for developers who prefer direct calls. In a normal Clarion APP, the code templates supply the same behavior without requiring hand-coded declarations. For a hand-coded project, first see [Hand-Coded Integration](../hand-coded-integration.md).

The functions below return SIGNED LONG values. Check each function reference for its return values.

The seven general dimming controls and two functions for hand-coded custom message windows are listed below. Automatic dimming of normal MESSAGE dialogs is handled by the template. See the [Automatic Message Dimming guide](../guides/automatic-messages.md).

## [CDDimWindow](CDDimWindow.md)

Dim the client area of a parent window with the standard black overlay.

```clarion
CDDimWindow(LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDDimWindow')
```

Parameters: parent window handle, strength (0–255).

```clarion
DimResult = CDDimWindow(0{PROP:Handle},90)
```

## [CDDimWindowEx](CDDimWindowEx.md)

Dim with a chosen red, green, and blue appearance. Each color component ranges from 0 through 255.

```clarion
CDDimWindowEx(LONG,LONG,LONG,LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDDimWindowEx')
```

Parameters: parent window handle, strength, red, green, blue.

```clarion
DimResult = CDDimWindowEx(0{PROP:Handle},90,0,180,0)
```

## [CDRestoreWindow](CDRestoreWindow.md)

Restore one active dimming request after a synchronous call finishes.

```clarion
CDRestoreWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDRestoreWindow')
```

```clarion
RestoreResult = CDRestoreWindow(0{PROP:Handle})
```

Do not use this directly after a START call that has been registered. That child completes its matching dimming operation when its Close Window code runs.

## [CDWindowRegisterChild](CDWindowRegisterChild.md)

Associate the parent's dimming request with a thread returned by START.

```clarion
CDWindowRegisterChild(LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDWindowRegisterChild')
```

```clarion
StartedThread = START(MyChildWindow,25000)
RegisterResult = CDWindowRegisterChild(0{PROP:Handle},StartedThread)
```

First dim the parent. The second argument is the **START thread number**, not the child HWND. See [Dimming a Window Started with START](../guides/started-children.md).

## [CDWindowClosing](CDWindowClosing.md)

Tell cdWindowDim that the started child is closing. Place this call in the child's **Close Window** embed.

```clarion
CDWindowClosing(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDWindowClosing')
```

```clarion
CloseResult = CDWindowClosing(THREAD())
```

This call belongs in the child procedure and should execute exactly once as the child shuts down.

## [CDSetDimmingEnabled](CDSetDimmingEnabled.md)

Show or hide the process-wide dimming effect without discarding active parent/child relationships.

```clarion
CDSetDimmingEnabled(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDSetDimmingEnabled')
```

```clarion
CDSetDimmingEnabled(0)  ! Disable
CDSetDimmingEnabled(1)  ! Enable
```

## [CDGetDimmingEnabled](CDGetDimmingEnabled.md)

Read the current process-wide status. Returns 1 when enabled and 0 when disabled on a successful query.

```clarion
CDGetDimmingEnabled(),SIGNED,PROC,PASCAL,RAW,NAME('CDGetDimmingEnabled')
```

```clarion
ToggleStatus = CDGetDimmingEnabled()
```



## Explicit custom message window exports

- [CDRegisterMessageWindow](CDRegisterMessageWindow.md): register a message window on its own UI thread; works with automatic detection off.
- [CDUnregisterMessageWindow](CDUnregisterMessageWindow.md): restore the tracked parent and release the registration's observer lease.

See [Custom Message Windows](../guides/custom-message-windows.md) for ABC, Legacy and multi-DLL examples.

Declare **DimResult**, **RestoreResult**, **RegisterResult**, **CloseResult**, **StartedThread**, and **ToggleStatus** as local LONG variables when using these examples. Use a current window handle only in code that actually runs inside a window procedure.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](../guides/index.md) | [What's New](../whatsnew.md)
