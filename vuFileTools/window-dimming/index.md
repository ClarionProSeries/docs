---
title: "Window Dimming"
summary: "Optional automatic and manual parent-window dimming in vuFileTools 5."
description: "Enable Window Dimming with one global checkbox, then configure the appearance and optional controls."
keywords: ["vuFileTools", "Clarion", "Window Dimming"]
page_type: "guide"
last_updated: "2026-11-19"
---

[Home](../index.md) | [Using the Template](../template-usage.md) | [Window Dimming Functions](functions/index.md)

# Window Dimming

Window Dimming makes the parent window less prominent while an update form or message window is displayed. It is included in vuFileTools 5 and supports ABC and Legacy applications.

**Window Dimming is disabled by default.** The rest of vuFileTools works normally without it.

## Enable Window Dimming

1. Open your Clarion APP and select **Global Extensions**.
2. Open **vuFileTools Initialization**, then the **Window Dimming** tab.
3. **Uncheck Disable window dimming templates.**
4. Generate and compile the application.

The three normal options are already selected: **Enable automatic browse dimming**, **Auto-dim MESSAGE / STOP / HALT**, and **Use default window appearance**. The standard appearance is black at strength 90. You can change these settings whenever you want.

**Required for Window Dimming:** The running application EXE needs a Windows 8-or-later compatibility manifest. This requirement applies to Window Dimming, not to the other vuFileTools functions. See [Troubleshooting](troubleshooting.md).

Automatic browse/update dimming and standard Clarion message dimming need no changes to your existing browse or MESSAGE code. Optional extensions and code templates offer individual-window appearance changes, manual Dim/Restore, START children, and custom message windows.

## Guides and examples

- [Automatic Browse Dimming](automatic-browse.md)
- [Automatic MESSAGE / STOP / HALT Dimming](automatic-messages.md)
- [Window Appearance](appearance.md)
- [Manual Dim and Restore](manual.md)
- [START Procedures](started-children.md)
- [Runtime Controls](runtime-controls.md)
- [Custom Colored Message Procedures](custom-messages.md)
- [Custom Message Windows](custom-message-windows.md)
- [Multi-DLL Applications](multi-dll.md)
- [Hand-Coded Integration](hand-coded.md)
- [Window Dimming Function Reference](functions/index.md)
- [Troubleshooting](troubleshooting.md)

## Using vuFileTools with cdWindowDim

vuFileTools 5 and the standalone cdWindowDim Code Drop can both be installed in the same Clarion application. Both provide automatic Window Dimming. **Normally, enable automatic dimming in only one product.**

If you enable both, each product applies its own overlay. The combined effect can make the parent much darker or more intensely colored than you intended. To avoid this, leave **Disable window dimming templates** checked in vuFileTools, or turn off the corresponding automatic dimming in the cdWindowDim global extension. Both products may remain installed.

[Home](../index.md) | [Window Dimming Functions](functions/index.md)
