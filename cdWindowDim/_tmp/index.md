[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# cdWindowDim

![Clarion ProSeries cdWindowDim Code Drop](assets/images/cdWindowDim270x90.png)

Current Version: 1.0

Build: 034

Release Date: 11-18-26

Last Updated: 11-18-2026

Copyright (c) Clarion ProSeries by LANSRAD. All rights reserved.

**Add the global extension. Compile. You’re done.**

Open **Global Extensions** in your Clarion APP, add **cdWindowDim - Global Settings**, and compile. The standard black dimming effect works automatically for supported browse/update windows and `MESSAGE()`, `STOP()` and `HALT()` dialogs. No edits to individual browse procedures or existing message calls are needed. [Get started](getting-started/index.md).

**Draw attention to the active window.**

When a user opens an update form, cdWindowDim can automatically dim the browse behind it and restore the browse when the form closes. The active form stays clear and easy to read.

The default effect needs no additional configuration. Developers who want more control can choose an overlay color and strength, customize individual browses, or use code templates for other windows and report previews.

## What cdWindowDim can do

- Dim supported ABC and Legacy browse windows automatically while an update form is open.
- Automatically dim the parent behind standard Clarion MESSAGE, STOP, and HALT dialogs, including common Clarion-generated confirmation prompts and supported CapeSoft MessageBox windows. The option is enabled by default.
- Restore the parent as soon as the associated operation finishes.
- Choose a global window appearance or give each browse a different color and strength.
- Dim other windows manually with simple code templates.
- Support windows launched with START, using a matching open-and-close sequence.
- Keep a parent dimmed while several child windows remain open, restoring it after the last one closes.
- Add runtime commands so an application user can enable or disable the effect.
- Work in single-EXE or multi-DLL Clarion applications.

## Documentation

- [Introduction](introduction.md)
- [Requirements](requirements.md)
- [Installation Instructions](install.md)
- [Registering the Template](template-registration.md)
- [Using the Template in Your Application](template-usage.md)
- [Getting Started](getting-started/index.md)
- [Task Guides: How Do I...?](guides/index.md)
- [Custom Message Windows](guides/custom-message-windows.md)
- [Automatic Message Dimming](guides/automatic-messages.md)
- [Custom Colored Message Procedures](guides/custom-messages.md)
- [Dimming a Window Started with START](guides/started-children.md)
- [Hand-Coded Integration](hand-coded-integration.md)
- [DLL Function Reference](functions/index.md)
- [Deployment](deployment.md)
- [Troubleshooting](troubleshooting.md)
- [What's New](whatsnew.md)
- [Version History](version-history.md)
- [Support](support.md)
- [About Code Drops](codedrops.md)
- [About ProHelp Studio](prohelpstudio.md)

## Start here

| I want to... | See... |
|---|---|
| Dim my normal browse/update windows | [Getting Started](getting-started/index.md) |
| Customize dimming colors | [Window Appearance](guides/window-appearance.md) |
| Dim a window opened by a normal procedure call | [Manual Dim and Restore](guides/manual-dimming.md) |
| Dim a window launched with START | [Dimming a Window Started with START](guides/started-children.md) |
| Give a message a black, blue, or red background | [Custom Colored Messages](guides/custom-messages.md) |
| Add an enable/disable button | [Runtime Dimming Controls](guides/runtime-controls.md) |
| Write the function calls myself | [Hand-Coded Integration](hand-coded-integration.md) |

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
