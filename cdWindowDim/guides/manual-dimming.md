---
title: "Manual Dim and Restore"
summary: "Dim a window while a synchronous procedure or report runs, with template and hand-coded examples."
description: "Dim a window while a synchronous procedure or report runs, with template and hand-coded examples."
keywords: ["cdWindowDim", "Clarion", "Code Drop", "window dimming"]
page_type: "guide"
last_updated: "2026-11-16"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)

# Manual Dim and Restore

Use the manual code templates when you want to dim a parent window while another **synchronous** window or report preview is open. A synchronous call returns after the called procedure finishes, so the Restore operation belongs immediately after that call.

For a window launched with **START**, follow [Dimming a Window Started with START](started-children.md) instead.

## Using the code templates

1. In the calling window, open the button's **Accepted** embeds. Set the button action to **No Special Action** if you are inserting the procedure call yourself.
2. Insert **cdWindowDim - Dim Parent Window**.
3. Insert Clarion's **Call a Procedure** code template, choosing the window or report you want to open.
4. Insert **cdWindowDim - Restore Parent Window**.
5. Check the generated source to confirm that the call sits between Dim and Restore.

The source should resemble:

```clarion
CDDimWindowEx(0{PROP:Handle},90,0,0,0)
MyUpdateWindow()
CDRestoreWindow(0{PROP:Handle})
```

Use your actual procedure name and the appropriate accepted-call context. The Dim template lets you use the global appearance or choose a different color and strength.

## Writing the calls by hand

After setting up the DLL declarations described in [Hand-Coded Integration](../hand-coded-integration.md), the equivalent parent Accepted code is:

```clarion
DimResult = CDDimWindow(0{PROP:Handle},90)
MyUpdateWindow()
RestoreResult = CDRestoreWindow(0{PROP:Handle})
```

**DimResult** and **RestoreResult** are LONG variables if you choose to inspect the results.

Use this same balanced approach around a normal Clarion report preview. **Do not use this recipe for a START-launched window.** START returns before the new child window closes, so it needs the distinct [START window workflow](started-children.md).

When temporarily disabling the code templates, disable the corresponding Dim and Restore inserts together. Otherwise one operation can remain without its matching partner.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)
