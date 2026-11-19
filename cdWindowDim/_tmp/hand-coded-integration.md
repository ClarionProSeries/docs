[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# Hand-Coded Integration Without the Template

The global template is recommended for normal Clarion applications. Use this page only when you deliberately want to call cdWindowDim from your own Clarion code.

## Declare the DLL functions

Add the following MAP declarations to the APP or hand-coded program that calls the functions:

```clarion
MAP
  MODULE('CDWindowDim.dll')
    CDDimWindow(LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDDimWindow')
    CDDimWindowEx(LONG,LONG,LONG,LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDDimWindowEx')
    CDRestoreWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDRestoreWindow')
    CDWindowRegisterChild(LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDWindowRegisterChild')
    CDWindowClosing(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDWindowClosing')
    CDSetDimmingEnabled(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDSetDimmingEnabled')
    CDGetDimmingEnabled(),SIGNED,PROC,PASCAL,RAW,NAME('CDGetDimmingEnabled')
    CDRegisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDRegisterMessageWindow')
    CDUnregisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDUnregisterMessageWindow')
  END
END
```

Use the matching **CDWindowDim.lib** when linking your program, and deploy **CDWindowDim.dll** with your EXE. Your application must include the [required Windows compatibility manifest](requirements.md).

## Dim a parent during a synchronous procedure call

In the parent window's code, use the current window handle. For example:

```clarion
DimResult = CDDimWindow(0{PROP:Handle},90)
MyUpdateWindow()
RestoreResult = CDRestoreWindow(0{PROP:Handle})
```

Declare **DimResult** and **RestoreResult** as local LONG variables if you want to examine the function results.

## Choose a different overlay color

CDDimWindowEx accepts strength followed by red, green, and blue values between 0 and 255:

```clarion
DimResult = CDDimWindowEx(0{PROP:Handle},90,0,180,0)
```

This example chooses green. Follow the call with a matching Restore for a synchronous operation.

## Dim a window launched with START

A START-launched child window needs a different sequence. The parent dims itself and starts the child, then associates the returned **thread number** with the parent. The child notifies cdWindowDim when it closes. See [Dimming a Window Started with START](guides/started-children.md) for the complete parent and child examples.

## Enable, disable, toggle, or read dimming status

```clarion
CDSetDimmingEnabled(1)                         ! Enable
CDSetDimmingEnabled(0)                         ! Disable
CDSetDimmingEnabled(1 - CDGetDimmingEnabled()) ! Toggle
ToggleStatus = CDGetDimmingEnabled()           ! 1 on, 0 off
```

A hand-coded APP needs its own declarations and library dependency. The **Disable this template** option does not remove programmer-written calls.

## Register your own message window

If you prefer direct calls rather than the **Custom Message Window** extension, call these functions **inside the message WINDOW procedure**:

```clarion
! After the message window has opened:
CDRegisterMessageWindow(0{PROP:Handle})

! As the message window closes:
CDUnregisterMessageWindow(0{PROP:Handle})
```

These two functions are included in the MAP above. Place the registration after the message WINDOW opens and the unregistration before it closes. They are not needed for standard `MESSAGE()` calls when automatic message dimming is enabled.

**Tip:** Open the included demo APP in Clarion and select **Source**. You can see exactly where the template places its calls in working generated code.

See the [Custom Message Windows guide](guides/custom-message-windows.md) for the template alternative.

See the [DLL Function Reference](functions/index.md) for every public function.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

## Message observer and colored helpers

Normal `MESSAGE()`, `STOP()` and `HALT()` dimming is managed by the global and procedure extensions. Optional [Custom Colored Message Procedures](guides/custom-messages.md) can be imported through Clarion Utilities. You do not need to set up automatic message observation with hand-written code.
