
[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)

# Dimming a Window Started with START

A START-launched procedure runs on a separate Clarion thread. **Dim the parent, START the child, register its thread, and tell vuFileTools when the child closes.** Do not Restore immediately after START.

## Parent: accepted button embed

Create a local LONG variable named `StartedThread`. If using a Clarion **Call a Procedure** action with **Initiate Thread** selected, set **Return Thread Variable** to that variable. Insert the code templates on either side of Clarion's START operation in this exact order:

1. **vuFileTools - Dim Parent Window** before START
2. The normal Clarion START call, assigning its returned thread to `StartedThread`
3. **vuFileTools - Register Started Procedure** immediately after START

Equivalent hand code:

```clarion
vuFTDimWindowEx(0{PROP:Handle},90,0,0,0)
StartedThread = START(MyStartedProcedure,25000)
vuFTWindowRegisterChild(0{PROP:Handle},StartedThread)
```

## Child: Close Window embed

In the started child procedure, insert **vuFileTools - Started Child Closing** in its **Close Window** embed. Use that embed in ABC or Legacy, not only the Close button's Accepted embed.

```clarion
vuFTWindowClosing(THREAD())
```

The parent stays dimmed while other registered START child claims remain. Multiple children may close in a different order. A START procedure without a registration call is not tracked automatically.

Test title-bar X, normal close button, multiple children and the absence of premature Restore. See [vuFTWindowRegisterChild](functions/vuFTWindowRegisterChild.md) and [vuFTWindowClosing](functions/vuFTWindowClosing.md).

[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)