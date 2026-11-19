
[Home](../index.md) | [Window Dimming](index.md) | [Function Reference](functions/index.md)

# Hand-Coded Window Dimming Integration

For most applications, enable Window Dimming in **vuFileTools Initialization** and use its procedure and code templates. If you prefer direct Clarion calls, use the examples below.

## Declare the functions

The global template supplies these MAP declarations when Window Dimming is enabled. A completely hand-coded application can supply them directly:

```clarion
MAP
  MODULE('vuFT5.dll')
    vuFTDimWindow(LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTDimWindow')
    vuFTDimWindowEx(LONG,LONG,LONG,LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTDimWindowEx')
    vuFTRestoreWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTRestoreWindow')
    vuFTWindowRegisterChild(LONG,LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTWindowRegisterChild')
    vuFTWindowClosing(LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTWindowClosing')
    vuFTSetDimmingEnabled(LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTSetDimmingEnabled')
    vuFTGetDimmingEnabled(),SIGNED,PROC,PASCAL,RAW,NAME('vuFTGetDimmingEnabled')
    vuFTRegisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTRegisterMessageWindow')
    vuFTUnregisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTUnregisterMessageWindow')
  END
END
```

Link with **vuFT5.lib** and deploy the matching **vuFT5.dll**. The running EXE must include a Windows 8-or-later compatibility manifest for Window Dimming.

## Dim and restore around a synchronous procedure

Call Dim before the synchronous procedure and Restore after it returns. Use the same parent handle in both calls:

```clarion
DimResult = vuFTDimWindow(0{PROP:Handle},90)
MyUpdateWindow()
RestoreResult = vuFTRestoreWindow(0{PROP:Handle})
```

If you need the return values, declare `DimResult` and `RestoreResult` as local LONG variables. For a custom color, use `vuFTDimWindowEx(0{PROP:Handle},90,0,180,0)` for green, then Restore after the called procedure returns.

## START children

A START child continues running after the START statement, so Restore must not follow START immediately. For example:

```clarion
vuFTDimWindowEx(0{PROP:Handle},90,0,0,0)
StartedThread = START(MyStartedProcedure,25000)
vuFTWindowRegisterChild(0{PROP:Handle},StartedThread)
```

Declare `StartedThread` as LONG. In the started child procedure's Close Window embed:

```clarion
vuFTWindowClosing(THREAD())
```

See [START Procedures](started-children.md) for template placement and usage.

## Runtime controls

```clarion
vuFTSetDimmingEnabled(1)                         ! Enable
vuFTSetDimmingEnabled(0)                         ! Disable
vuFTSetDimmingEnabled(1 - vuFTGetDimmingEnabled()) ! Toggle
DimmingEnabled = vuFTGetDimmingEnabled()         ! Read status
```

Declare `DimmingEnabled` as LONG if using the last assignment.

## Custom message windows

In the actual custom message WINDOW procedure, register after the window opens and unregister before it closes:

```clarion
IF 0{PROP:Handle} <> 0
  vuFTRegisterMessageWindow(0{PROP:Handle})
END
```

```clarion
vuFTUnregisterMessageWindow(0{PROP:Handle})
```

The optional **vuFileTools - Custom Message Window** extension generates these calls for ABC and Legacy procedures. Ordinary Clarion MESSAGE calls do not require them once automatic MESSAGE dimming is enabled.

**Tip:** Open the included demonstration APP in Clarion and choose **Source** to see where the template inserts each call in working code.

[Home](../index.md) | [Window Dimming](index.md) | [Function Reference](functions/index.md)