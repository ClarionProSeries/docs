---
title: "Window Dimming Appearance"
summary: "Configure overlay strength and color"
description: "Configure overlay strength and color"
keywords: ["vuFileTools", "Clarion", "window dimming"]
page_type: "guide"
last_updated: "2026-11-19"
---

[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)

# Window Dimming Appearance

The default appearance is a **black overlay with strength 90**. Strength is a value from 0 (transparent) to 255 (solid color). The global template supports a COLOR picker and a strength control. A browse extension or the **Dim Parent Window** code template can use global settings or a local override.

When choosing a custom appearance, use **Custom overlay color**. The picker starts at `COLOR:Gray` for easier color selection. The normal **Use default window appearance** checkbox still generates black at strength 90. You can switch between the standard appearance and a custom color. Procedure and manual operations that follow the global appearance use the global values regardless of the disabled local custom fields.

## Choosing custom overlay colors

The overlay is **blended with the existing window**, so its visible tint depends on the selected color, the strength, and the window underneath. At strength 90, `COLOR:Blue` may appear lavender over a light browse instead of pure blue. Red can look pink, and green can look pale green.

For the best result, try a custom RGB shade and adjust the strength while viewing your actual application. Adding green to a blue overlay, for example, can produce a softer sky-blue tint. Increasing strength makes the tint more noticeable but reduces the readability of the dimmed window. The standard **black overlay at strength 90** remains available through **Use default window appearance**.

If the Custom color picker preview appears black, check **HSL Lightness (L)** and see [Window Dimming Troubleshooting](troubleshooting.md). The custom color picker starts at `COLOR:Gray` for easy selection.

These RGB values are shown as an illustrative direct call:

```clarion
DimResult = vuFTDimWindowEx(0{PROP:Handle},90,0,180,0)
```

This chooses a green overlay. For a synchronous call, follow it with `vuFTRestoreWindow(0{PROP:Handle})` after the called procedure returns. The template uses Clarion `BAND` and `BSHIFT` when converting the COLOR picker value to RGB components.

For meanings of arguments and return values, see [vuFTDimWindowEx](functions/vuFTDimWindowEx.md).

[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)
