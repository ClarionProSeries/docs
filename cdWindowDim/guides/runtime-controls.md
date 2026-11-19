---
title: "Runtime Dimming Controls"
summary: "Add Enable, Disable, Toggle, and Get Status buttons or direct calls."
description: "Add Enable, Disable, Toggle, and Get Status buttons or direct calls."
keywords: ["cdWindowDim", "Clarion", "Code Drop", "window dimming"]
page_type: "guide"
last_updated: "2026-11-16"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)

# Runtime Dimming Controls

Your application can let users turn the visible dimming effect on and off without changing the application's configuration or losing track of open child windows.

## Using code templates

Insert the appropriate code template into a button's **Accepted** embed, a menu command, or another executable location:

| Code template | What it does |
|---|---|
| **cdWindowDim - Enable Dimming** | Show current dimming effects and enable new ones. |
| **cdWindowDim - Disable Dimming** | Hide active effects and prevent new ones from being shown. |
| **cdWindowDim - Toggle Dimming** | Switch between enabled and disabled. |
| **cdWindowDim - Get Dimming Status** | Assign 1 or 0 to a LONG variable selected by the developer. |

The status template generates an assignment like this:

```clarion
ToggleStatus = CDGetDimmingEnabled()
```

In **Result LONG variable**, type the name of an existing LONG, or click the selection button to choose or create one in the Clarion data dialog. The selected variable receives the status value. A result of 1 means enabled; 0 means disabled. You can read it when a window opens and again from a timer event if you want the status displayed live.

## Writing the calls by hand

Use the declarations explained in [Hand-Coded Integration](../hand-coded-integration.md). For example, these statements can be placed in a button or menu embed:

```clarion
CDSetDimmingEnabled(0)                   ! Disable
CDSetDimmingEnabled(1)                   ! Enable
CDSetDimmingEnabled(1 - CDGetDimmingEnabled())  ! Toggle
ToggleStatus = CDGetDimmingEnabled()     ! Read status
```

The on/off setting applies to the running process. Disabling it hides the effect but does not discard the relationships for already-open windows. Enabling again can restore the visible effect for those still-active relationships.

## Let users keep their preferred setting

You can offer your customers an **Enable window dimming** option in a menu or preferences window. Save their choice using the INI file, configuration database, or other preferences system your application already uses. When the application starts, read that saved setting and enable or disable dimming accordingly.

The code templates work in the same way: after reading the preference at startup, run either **cdWindowDim - Enable Dimming** or **cdWindowDim - Disable Dimming**. When saving a preference, use **cdWindowDim - Get Dimming Status** to read the current choice into a LONG variable.

If you prefer direct function calls, the equivalent is:

```clarion
! SavedDimming is a LONG loaded from your own preferences.
IF SavedDimming
  CDSetDimmingEnabled(1)
ELSE
  CDSetDimmingEnabled(0)
END

! When saving your preferences:
SavedDimming = CDGetDimmingEnabled()
```

**SavedDimming** is an example variable, not something created by cdWindowDim. Your application is responsible for reading it from and writing it to the preference store. cdWindowDim does not create or manage an INI file for this setting.

When **Disable this template** is selected in global settings and the APP is rebuilt, the code-template inserts stop generating their calls. Handwritten calls are not automatically removed.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)
