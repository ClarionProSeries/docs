---
title: "Window Appearance"
summary: "Choose global or local overlay colors and dimming strength."
description: "Choose global or local overlay colors and dimming strength."
keywords: ["cdWindowDim", "Clarion", "Code Drop", "window dimming"]
page_type: "guide"
last_updated: "2026-11-18"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)

# Window Appearance

The standard effect is a **black overlay at strength 90**. You can use it without changing anything. To select another appearance, clear **Use default window appearance** and choose a custom color and strength.

## Choose a global appearance

1. Open **cdWindowDim - Global Settings** and select **Window Dimming**.
2. Clear **Use default window appearance**.
3. Choose a value for **Dimming strength (0-255)**. Zero is transparent. A value of 255 is fully opaque in the selected color.
4. Click the **Custom overlay color** button and select a fixed RGB color in Clarion's normal color picker.
5. Compile and run the application to see the result.

You can switch between the standard black appearance and the custom color you choose.

## Choosing custom overlay colors

The selected overlay color is **blended with the underlying window**. The result depends on both the selected color and the dimming strength, as well as the original window colors. At strength 90, for example, `COLOR:Blue` over a light browse can look lavender rather than pure blue. A bright red may look pink, and a green overlay can appear pale green.

For a different effect, adjust the custom RGB shade and dimming strength together, then test them on your application's actual windows. Adding some green to a blue overlay can give a more natural sky-blue tint. A higher strength makes the tint more prominent but can make the dimmed window harder to read. The standard **black overlay at strength 90** remains a useful choice.

If the Clarion Custom color picker starts with a black preview, check its **HSL Lightness (L)** setting. See [Troubleshooting](../troubleshooting.md) for the simple workaround.

## Customize one browse

In the browse's **cdWindowDim - Window and Message Dimming** extension, clear **Use global window appearance settings**. Choose the color and strength for that browse only.

## Customize a manual dimming operation

The **cdWindowDim - Dim Parent Window** code template has the same global/local appearance choice. Select the color and strength when you insert that operation.

The first active dimming request establishes the parent's current appearance. If several started or synchronous child operations are open on the same parent, it retains that appearance until the last request closes.

For a custom appearance from Clarion code, see [CDDimWindowEx](../functions/index.md).

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)
