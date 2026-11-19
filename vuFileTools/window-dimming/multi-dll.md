---
title: "Window Dimming in Multi-DLL Applications"
summary: "Set up automatic dimming, custom windows and message helpers across several Clarion APPs."
description: "A practical multi-DLL setup for vuFileTools Window Dimming."
keywords: ["vuFileTools", "Clarion", "multi-DLL", "message helpers"]
page_type: "guide"
last_updated: "2026-11-19"
---

[Home](../index.md) | [Window Dimming](index.md) | [Using the Template](../template-usage.md)

# Window Dimming in Multi-DLL Applications

## Automatic window and message dimming

Window Dimming is initially disabled in vuFileTools. In each APP where you want it, open **vuFileTools Initialization** > **Window Dimming** and uncheck **Disable window dimming templates**. The normal browse and message options are already selected. Compile the APPs that use the feature.

The global extension automatically supplies normal procedure support in the APPs where the feature is enabled. **Enable automatic browse dimming** and **Auto-dim MESSAGE / STOP / HALT** are both preselected beneath the master switch.

You do not need the global extension in every APP. For example, an Updates DLL can provide dimming for its own browse and message windows without adding the extension to an unrelated Reports DLL.

## Your own message window

Add **vuFileTools - Custom Message Window** to the actual message WINDOW procedure in the APP that contains it. You do not need to add this extension to APPs that only call the message procedure. See [Custom Message Windows](custom-message-windows.md).

## Share optional black, blue and red MESSAGE procedures

Open **Application > Utilities** (Ctrl+U) in Clarion and use the utility entries shown below:

| APP | Select in Clarion | Result |
|---|---|---|
| **Data DLL** (or your chosen procedure-owning APP) | **ImportvuFTDimMessage — Customizable procedures (Single EXE or Data DLL)** | Imports the real `vuFTDimMessage`, `vuFTDimMessageInfo` and `vuFTDimMessageError` procedures. |
| **Each other DLL or EXE APP that calls them** | **ImportvuFTDimMessageDec — Customizable procedure declarations (other APPs in multi-DLL solution)** | Lets the APP call the three procedures from the Data DLL. |

Import the first utility into **one** owning APP. Import the second utility into every other APP that needs the procedures. **Do not import both utilities into the same APP.** Build the Data DLL first, then its callers.

For a single EXE, import **ImportvuFTDimMessage** into the EXE APP only. The second utility is not needed.

Clarion installs these imports from `accessory\libsrc\win`. Normally you only need the utility entries—not the TXA filenames. See [Custom Colored Message Procedures](custom-messages.md) for calling examples.

[Home](../index.md) | [Window Dimming](index.md)
