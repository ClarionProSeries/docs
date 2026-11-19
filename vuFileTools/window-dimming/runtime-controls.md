---
title: "Window Dimming Runtime Controls"
summary: "Allow users to enable or disable window dimming"
description: "Allow users to enable or disable window dimming"
keywords: ["vuFileTools", "Clarion", "window dimming"]
page_type: "guide"
last_updated: "2026-11-19"
---

[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)

# Window Dimming Runtime Controls

First uncheck **Disable window dimming templates** in the vuFileTools global extension. The four runtime code templates are **Enable Dimming**, **Disable Dimming**, **Toggle Dimming**, and **Get Dimming Status**. These affect the running process after the template has been configured and linked.

Equivalent calls:

```clarion
vuFTSetDimmingEnabled(1)                           ! Enable
vuFTSetDimmingEnabled(0)                           ! Disable
vuFTSetDimmingEnabled(1 - vuFTGetDimmingEnabled()) ! Toggle
DimmingEnabled = vuFTGetDimmingEnabled()           ! 1=on, 0=off
```

Declare `DimmingEnabled` as LONG. The Get Dimming Status code template uses Clarion's `FIELD` picker for an existing or new LONG variable.

To remember a customer's preference, save it using **your application's own INI/settings** mechanism and apply it at startup. vuFileTools does not persist the setting for you. Use the code templates or functions to control the visible effect while the application runs.

[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)
