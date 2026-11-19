---
title: "vuFTUnregisterMessageWindow"
summary: "Remove the explicit message-window registration and restore its owner once."
description: "Custom message HWND lifecycle function for vuFileTools."
keywords: ["vuFileTools", "Clarion", "MESSAGE", "custom message window"]
page_type: "function"
last_updated: "2026-11-19"
---

# vuFTUnregisterMessageWindow

Remove the explicit message-window registration and restore its owner once.

```clarion
vuFTUnregisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTUnregisterMessageWindow')
```

The LONG argument is the **message window's own HWND**, obtained inside its window procedure after `OPEN`. This is not the parent's HWND. The call must occur on the message's owning UI thread, and the message must have a valid top-level owner window in the current process. The matched register/unregister pair stays in the **message window procedure**.

```clarion
vuFTUnregisterMessageWindow(0{PROP:Handle})
```

Return values: **1** restored, **2** no matching explicit registration, **0** failure. Destruction fallback releases a missing normal unregister when possible.

The product global extension supplies the MAP entry. Alternatively use the manual MAP in [Custom Message Windows](../custom-message-windows.md).
