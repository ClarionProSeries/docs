---
title: "Automatic Browse Window Dimming"
summary: "Automatically dim ABC and Legacy browses while their update forms are open."
description: "Enable the vuFileTools Window Dimming master switch to activate browse/update dimming."
keywords: ["vuFileTools", "Clarion", "browse", "Window Dimming"]
page_type: "guide"
last_updated: "2026-11-19"
---

[Home](../index.md) | [Window Dimming](index.md)

# Automatic Browse Window Dimming

To dim a browse while its update form is open, open **vuFileTools Initialization** under Global Extensions, select **Window Dimming**, and uncheck **Disable window dimming templates**. Then compile.

**Enable automatic browse dimming** is already checked beneath the master switch. The global extension supplies the normal browse support for ABC and Legacy procedures automatically; you do not add a separate extension to every browse.

To customize one browse, open its **vuFileTools - Window and Message Dimming** procedure extension. You can disable browse dimming for that procedure or choose a different appearance.

For procedures called outside a normal browse/update sequence, use [Manual Dim and Restore](manual.md). For a separately threaded child, see [START Procedures](started-children.md).

A Windows 8-or-later compatibility manifest is required in the running EXE for Window Dimming to appear. See [Troubleshooting](troubleshooting.md).

[Home](../index.md) | [Window Dimming](index.md)
