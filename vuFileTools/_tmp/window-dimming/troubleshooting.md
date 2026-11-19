
[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)

# Window Dimming Troubleshooting

## No overlay appears

**First check the Windows compatibility manifest on the application EXE.** A Windows 8-or-later compatibility manifest is required for the visual effect. The Clarion templates may generate code and the DLL may load correctly without the effect becoming visible.

Then confirm the following:

- The **vuFileTools global extension** is installed in the APP containing the calling procedures.
- **Enable automatic browse dimming** is checked if relying on automatic behavior. It is selected automatically when you enable the master Window Dimming switch.
- The affected browse has not selected **Disable auto dimming for this procedure** in its **vuFileTools - Window and Message Dimming** extension.
- The **vuFT5.lib** import library was regenerated from the compiled **vuFT5.dll**, and the same DLL is copied next to the customer EXE or available on its normal DLL search path.
- Confirm the APP uses the current vuFileTools DLL and matching import LIB.
- For START children, use Register after START and Window Closing in the child's Close Window embed.

## Custom overlay shade differs from the color picker

The overlay is translucent and blends with the original window. A blue preset may look lavender on a light browse, and red may look pink. Try adjusting the custom RGB shade and dimming strength, then test the actual effect. See [Choosing Custom Overlay Colors](appearance.md).

## Custom color preview is black

Clarion's **Custom** color picker uses Hue, Saturation, and Lightness (HSL). When it starts from black, **Lightness (L) can be 0**. Clicking around the hue/saturation field without increasing Lightness can leave the preview black.  A visible custom color can be selected once Lightness is increased.

The **Custom overlay color** field starts at `COLOR:Gray`. **Use default window appearance** generates the standard black overlay at strength 90.

If the preview is black:

1. Increase **HSL Lightness (L)** from **0** to about **50%**, using its numeric field or vertical lightness slider.
2. Choose the desired hue and shade, verifying the colored preview. Double-click the chosen color or its colored selection square to commit it when necessary.
3. Check that the **Custom overlay color** template field has the expected value before generating and compiling.
4. Alternatively, accept a visible preset from **Basic** first, then return to **Custom**.



Window Dimming is a client-area visual effect, not a lockout or focus command. With both cdWindowDim and vuFileTools in one application, use the correct `CD...` or `vuFT...` exports and test the combined layout explicitly.

[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)