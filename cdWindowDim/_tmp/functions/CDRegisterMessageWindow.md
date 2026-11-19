# CDRegisterMessageWindow

Explicitly register the current custom message HWND so its owner dims.

```clarion
CDRegisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDRegisterMessageWindow')
```

The LONG argument is the **message window's own HWND**, obtained inside its window procedure after `OPEN`. This is not the parent's HWND. The call must occur on the message's owning UI thread, and the message must have a valid top-level owner window in the current process. The matched register/unregister pair stays in the **message window procedure**.

```clarion
CDRegisterMessageWindow(0{PROP:Handle})
```

Return values: **1** newly dimmed, **2** already tracked without duplicate dim, **4** suppressed without dim, **0** failure.

The product global extension supplies the MAP entry. Alternatively use the manual MAP in [Custom Message Windows](../guides/custom-message-windows.md). Automatic classification is optional; all tracking remains inside CDWindowDim.dll. The accepted experimental probe is not a shipping DLL.
