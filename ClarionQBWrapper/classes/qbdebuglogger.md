---
title: "QBDebugLogger"
description: "Details for the QBDebugLogger class, including purpose, properties, and key methods."
keywords: ["Clarion", "QuickBooks", "QBXML", "debug", "logging", "DebugView", "QBDebugLogger"]
page_type: "reference"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

# QBDebugLogger

This class manages output to the DebugView utility. It centralizes diagnostic logging and provides support for message formatting, alignment, and runtime visibility toggles.

---

## Purpose

Controls logging output for wrapper classes, supports formatted message writing, and handles the visibility of the DebugView window.

---

## Properties

| Property | Type | Summary |
|:---|:---|:---|
| EnableDebugView | BYTE | Enables or disables all logging to DebugView. |
| DebugViewAlwaysOnTop | BYTE | Keeps the DebugView window on top when set. |
| ShowDebugViewInClassCode | BYTE | Toggles whether class methods emit debug output. |
| DebugViewIsVisible | BYTE | Tracks whether the DebugView utility window is visible. |

---

## Key Methods

| Method | Prototype (summary) | Description |
|:---|:---|:---|
| WriteDebug | WriteDebug(pMessage) | Sends a plain debug message to DebugView. |
| WriteDebugCLS | WriteDebugCLS([pMessage]) | Optionally clears the log, then writes a message. |
| WriteDebugAlignString | WriteDebugAlignString(Label, LabelValue) | Writes a label and aligned string value. |
| WriteDebugAlign (by reference) | WriteDebugAlign(Label, *LabelValue) | Writes a label and aligned string read via reference. |
| WriteDebugAlign (numeric) | WriteDebugAlign(Label, LabelValue LONG) | Writes a label and aligned numeric value. |
| WriteDebugAlignBool | WriteDebugAlignBool(Label, LabelValue) | Writes a label and aligned TRUE or FALSE value. |
| ShowDebugView | ShowDebugView() | Displays or activates the DebugView window. |

---

## Notes

- This class is globally instantiated and linked to all other wrapper classes by the template.  
- You can also call it directly from your own code for custom diagnostics.  
- See additional guidance on setup and practical use here: [Using Debug View](../using-debugview.md).

---

## Related Pages

- [qbconnectionmanager](qbconnectionmanager.md)  
- [qbsessionmanager](qbsessionmanager.md)  
- [qbxmlwriter](qbxmlwriter.md)  
- [qbxmlparser](qbxmlparser.md)  
- [qbxmltools](qbxmltools.md)  
- [qbaiclass](qbaiclass.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
