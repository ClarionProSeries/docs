[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# cdWindowDim - Troubleshooting

## A window does not dim: check the manifest first

**The most important first check is the EXE's Windows compatibility manifest.** It must declare support for Windows 8 or later. An application can compile and run normally yet show no dimming effect when the manifest does not provide this compatibility information.

See [Requirements](requirements.md) and [Deployment](deployment.md).

## The application builds but no browse dims

Open **cdWindowDim - Global Settings**. Make sure **Disable this template** is unchecked and **Enable automatic browse dimming** is checked. Confirm that the affected browse procedure has not selected **Disable auto dimming for this procedure**. Verify that the installed runtime DLL matches the product version.

## A custom appearance is not visible

Make sure the strength is greater than zero and a visible color is selected. A nearly black custom color can look similar to the default black overlay.

A custom tint may also look lighter or different from the picker swatch because the overlay blends with the underlying window. For example, a blue overlay can look lavender over a light browse. Adjust the color and strength together; see [Choosing Custom Overlay Colors](guides/window-appearance.md).

## Custom color preview is black

Clarion's **Custom** color picker uses Hue, Saturation, and Lightness (HSL). When the selected color is black, **Lightness (L) can start at 0**. Clicking a hue in the large color area may leave the preview black because lightness remains zero. 

The **Custom overlay color** starts at `COLOR:Gray`. The normal **Use default window appearance** setting produces a black overlay at strength 90.

If the Custom preview is black:

1. Change **HSL Lightness (L)** from **0** to about **50%**, using the numeric field or the vertical lightness slider.
2. Choose the desired hue and shade, and verify the colored preview. Double-click the intended color or colored selection square if the picker requires it to accept the color.
3. Confirm the **Custom overlay color** field shows the intended value, then regenerate and compile.
4. Alternatively, select and accept a visible **Basic** preset first, reopen **Custom**, and choose your shade.



## Compiler cannot find a CD function

Confirm the APP containing the procedure has its cdWindowDim global extension enabled. For hand-coded calls, make sure the required DLL declarations and matching CDWindowDim.lib are available. If you globally disabled cdWindowDim, handwritten function calls will not be removed for you.

## The parent restores too soon

Check the operation sequence. For synchronous calls, Restore belongs after the called procedure returns. For a window launched with START, **do not restore immediately after START**. Instead, associate the returned thread with the parent and run the **Started Child Closing** code template in the child's **Close Window** embed. See [Dimming a Window Started with START](guides/started-children.md).

## The parent stays dimmed

Make sure every successful manual Dim has exactly one matching Restore or started-child closing notification. For START, the child's closing code should run regardless of whether the user closes the window with a button or the title-bar X.

## Need to turn off the effect temporarily?

Use the individual and global disable options described in [Temporarily Disable Dimming](guides/temporarily-disable.md). 

If the issue persists, contact [Clarion ProSeries Support](support.md) with the Clarion version, ABC/Legacy chain, and steps to reproduce it.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
