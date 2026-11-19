# CDUnregisterMessageWindow

Remove the explicit message-window registration and restore its owner once.

```clarion
CDUnregisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDUnregisterMessageWindow')
```

The LONG argument is the **message window's own HWND**, obtained inside its window procedure after `OPEN`. This is not the parent's HWND. The call must occur on the message's owning UI thread, and the message must have a valid top-level owner window in the current process. The matched register/unregister pair stays in the **message window procedure**.

```clarion
CDUnregisterMessageWindow(0{PROP:Handle})
```

Return values: **1** restored, **2** no matching explicit registration, **0** failure. Destruction fallback releases a missing normal unregister when possible.

The product global extension supplies the MAP entry. Alternatively use the manual MAP in [Custom Message Windows](../guides/custom-message-windows.md). Automatic classification is optional; all tracking remains inside CDWindowDim.dll. The accepted experimental probe is not a shipping DLL.
