---
title: "Automatic Message Dimming"
summary: "Automatically dim the calling window behind supported Clarion message dialogs."
description: "Add the global extension, compile, and dim standard Clarion messages automatically."
keywords: ["Clarion", "MESSAGE", "STOP", "HALT", "window dimming"]
page_type: "guide"
last_updated: "2026-11-18"
---

[Home](../index.md) | [Task Guides](index.md)

# Automatic Message Dimming

**Automatic message dimming is on by default.** Add **cdWindowDim - Global Settings** to your Clarion APP and compile. Supported `MESSAGE()`, `STOP()` and `HALT()` dialogs—including standard Clarion-generated confirmations—dim their parent automatically and restore it when the dialog closes. Supported CapeSoft MessageBox windows work too.

**No changes to your existing MESSAGE calls and no individual window extensions are required for the standard effect.**

## Change the behavior if you want to

- **Turn it off for an APP:** In Global Extensions, open **cdWindowDim - Global Settings** > **Window Dimming** and clear **Auto-dim MESSAGE / STOP / HALT**.
- **Turn it off for one window:** Open that window's **cdWindowDim - Window and Message Dimming** procedure extension and select **Disable message dimming here**.
- **Choose a particular message color:** Use the optional [Black, Blue and Red Message Procedures](custom-messages.md).
- **Use your own replacement message window:** Add the optional [Custom Message Window](custom-message-windows.md) extension to the procedure that displays it.

## Multi-DLL applications

Add **cdWindowDim - Global Settings** to each APP that contains windows where you want automatic message dimming. You do not need to rewrite `MESSAGE()` calls. See [Multi-DLL Applications](multi-dll.md).

[Home](../index.md) | [Task Guides](index.md)
