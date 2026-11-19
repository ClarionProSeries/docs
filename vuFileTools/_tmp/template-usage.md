
[Home](index.md) | [All Functions](functions/index.md) | [Window Dimming](window-dimming/index.md)

# Using the vuFileTools Template

Add **vuFileTools Initialization** under **Global Extensions** in your Clarion APP. This provides the library's standard declarations and linkage. Generate and compile as usual to use vuFileTools utility functions.

## Optional Window Dimming

**Window Dimming is disabled by default.** To turn it on:

1. Open **vuFileTools Initialization** under Global Extensions.
2. Select the **Window Dimming** tab.
3. Uncheck **Disable window dimming templates**.
4. Generate and compile.

**Enable automatic browse dimming**, **Auto-dim MESSAGE / STOP / HALT**, and **Use default window appearance** are already checked. The default effect is black at strength 90. You can adjust the appearance or disable either automatic option as needed.

The running application EXE requires a **Windows 8-or-later compatibility manifest** for Window Dimming. The rest of vuFileTools does not have this special requirement. See the [Window Dimming guide](window-dimming/index.md).

## Optional procedure extensions

The global extension automatically adds **vuFileTools - Window and Message Dimming** support to eligible procedures. Open that procedure extension when you want to exclude an individual browse, disable its messages, or change its appearance.

For a custom message replacement window, add **vuFileTools - Custom Message Window** to the message WINDOW procedure itself. See [Custom Message Windows](window-dimming/custom-message-windows.md).

## Window Dimming code templates

The optional code templates are **Dim Parent Window**, **Restore Parent Window**, **Register Started Procedure**, **Started Child Closing**, **Enable Dimming**, **Disable Dimming**, **Toggle Dimming**, and **Get Dimming Status**. They generate Window Dimming code only when the global master disable option is unchecked. See [Manual Dimming](window-dimming/manual.md), [START Procedures](window-dimming/started-children.md) and [Runtime Controls](window-dimming/runtime-controls.md).

For hand-written calls, see [Hand-Coded Integration](window-dimming/hand-coded.md), or open the included demonstration APP in Clarion's **Source** view.

## Optional colored-message procedures

Use **Application > Utilities** (Ctrl+U) to import:

| Destination | Utility template |
|---|---|
| Single EXE or the owning Data DLL | **ImportvuFTDimMessage — Customizable procedures (Single EXE or Data DLL)** |
| Other APPs in a multi-DLL solution | **ImportvuFTDimMessageDec — Customizable procedure declarations (other APPs in multi-DLL solution)** |

Enable Window Dimming first, then import these procedures. The first utility provides black, blue, and red message procedures; the second provides calling declarations. See [Custom Colored Message Procedures](window-dimming/custom-messages.md).

## Secure Login

Use the existing **ImportSecureLogin — Import vuFileTools Secure Login** utility. The [Secure Login guide](secure-login.md) covers its requirements and earlier build changes.

[Home](index.md) | [All Functions](functions/index.md) | [Window Dimming](window-dimming/index.md)