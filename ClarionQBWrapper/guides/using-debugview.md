---
title: "Using DebugView"
description: "How to enable and use DebugView and DebugView++ with the Clarion QuickBooks Wrapper."
keywords: ["Clarion", "QuickBooks", "QBXML", "DebugView", "DebugView++", "logging", "diagnostics"]
page_type: "guide"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)

# Using DebugView

Both the template and the classes have strong support for using DebugView.

- **DebugView** is a free utility from Microsoft. Read about it and download it here:  
  https://learn.microsoft.com/sysinternals/downloads/debugview
- **DebugView++** is an alternative with advanced features. It is available on GitHub:  
  https://github.com/CobaltFusion/DebugViewPP

These diagnostics are enabled by default in the global template extension and can also be controlled directly on the **QBDebugLogger** class.

---

## Enable or disable at runtime

Toggle logging at runtime without changing template settings by setting properties on the global `QBDebugLogger` object:

```clarion
! Enable full DebugView logging and keep the window visible
QBDebugLogger.EnableDebugView          = 1
QBDebugLogger.ShowDebugViewInClassCode = 1
QBDebugLogger.DebugViewAlwaysOnTop     = 1
```

You can turn these on for troubleshooting and off during normal use. No template changes are required.

---

## What each setting does

- **EnableDebugView**  
  Master flag that turns all output to DebugView on or off.

- **ShowDebugViewInClassCode**  
  Enables very detailed method level logging so you can see exactly what each class is doing.

- **DebugViewAlwaysOnTop**  
  Brings the DebugView window to the front and keeps it on top for easy monitoring.

---

## Related Pages

- [qbdebuglogger](../classes/qbdebuglogger.md)
- [qbsessionmanager](../classes/qbsessionmanager.md)
- [qbxmlwriter](../classes/qbxmlwriter.md)
- [qbxmlparser](../classes/qbxmlparser.md)
- [qbxmltools](../classes/qbxmltools.md)
- [qbaiclass](../classes/qbaiclass.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)
