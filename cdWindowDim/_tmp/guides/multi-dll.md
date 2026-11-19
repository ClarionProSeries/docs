[Home](../index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)

# Multi-DLL Applications

## Automatic window and message dimming

Add **cdWindowDim - Global Settings** to each APP that contains windows where you want automatic dimming, then compile. Normal window procedures are covered automatically by that global extension.

You do not need to put the global extension in every APP. For example, if your browse/update windows are all in an Updates DLL, you can configure it there without adding the extension to the unrelated Data DLL or Reports DLL.

Automatic MESSAGE dimming is **on by default**. Standard `MESSAGE()`, `STOP()` and `HALT()` calls—including generated confirmation windows—work without changing their call sites.

## Your own message window

In the APP that contains your custom message WINDOW procedure, add **cdWindowDim - Custom Message Window** to that procedure. Calling APPs do not need that extension merely to open the custom message. See [Custom Message Windows](custom-message-windows.md).

## Share optional black, blue and red MESSAGE procedures

The template provides two utilities under **Application > Utilities** (Ctrl+U). Import these into the indicated APPs:

| APP | Select in Clarion | Result |
|---|---|---|
| **Data DLL** (or your chosen procedure-owning APP) | **ImportcdDimMessage — Customizable procedures (Single EXE or Data DLL)** | Adds the real `cdDimMessage`, `cdDimMessageInfo` and `cdDimMessageError` procedures. |
| **Each other DLL or EXE APP that calls them** | **ImportcdDimMessageDec — Customizable procedure declarations (other APPs in multi-DLL solution)** | Lets that APP call those three procedures from the Data DLL. |

Import the first utility **once**, into the procedure-owning APP. Import the second utility into each APP that needs to call those procedures. **Never import both into one APP.** Build the Data DLL first, then its callers. Link the appropriate APPs as you normally do in a Clarion multi-DLL solution.

For a single-EXE project, import **ImportcdDimMessage** into the EXE APP only; the declaration import is unnecessary.

The TXA files are installed with the product in Clarion's `accessory\libsrc\win` folder; developers use the utility entries above rather than manually locating them. See [Custom Colored Message Procedures](custom-messages.md) for examples.

[Home](../index.md) | [Using the Template](../template-usage.md)
