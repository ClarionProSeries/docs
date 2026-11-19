---
title: "vuFTRegisterMessageWindow"
summary: "Explicitly register the current custom message HWND so its owner dims."
description: "Custom message HWND lifecycle function for vuFileTools."
keywords: ["vuFileTools", "Clarion", "MESSAGE", "custom message window"]
page_type: "function"
last_updated: "2026-11-19"
---

# vuFTRegisterMessageWindow

Explicitly register the current custom message HWND so its owner dims.

```clarion
vuFTRegisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('vuFTRegisterMessageWindow')
```

The LONG argument is the **message window's own HWND**, obtained inside its window procedure after `OPEN`. This is not the parent's HWND. The call must occur on the message's owning UI thread, and the message must have a valid top-level owner window in the current process. The matched register/unregister pair stays in the **message window procedure**.

```clarion
vuFTRegisterMessageWindow(0{PROP:Handle})
```

Return values: **1** newly dimmed, **2** already tracked without duplicate dim, **4** suppressed without dim, **0** failure.

The product global extension supplies the MAP entry. Alternatively use the manual MAP in [Custom Message Windows](../custom-message-windows.md).
