---
title: "Custom Colored Message Procedures"
summary: "Import black, blue or red MESSAGE procedures using Clarion Utilities."
description: "How to import and call optional message procedures in single-EXE and multi-DLL apps."
keywords: ["Clarion", "MESSAGE", "Window Dimming", "multi-DLL"]
page_type: "guide"
last_updated: "2026-11-18"
---

[Home](../index.md) | [Automatic Message Dimming](automatic-messages.md)

# Custom Colored Message Procedures

cdWindowDim includes three optional Clarion procedures for choosing a specific dimming color behind one message. They accept ordinary `MESSAGE()` arguments and return the selected button result:

| Procedure | Effect |
|---|---|
| `cdDimMessage` | Black overlay |
| `cdDimMessageInfo` | Blue overlay |
| `cdDimMessageError` | Red overlay |

You do not need these procedures for normal `MESSAGE()`, `STOP()` or `HALT()` calls: those can already dim automatically when the global automatic-message setting is enabled (on by default).

## Import into a single-EXE application

1. Add the product's **global extension** to your APP.
2. Open **Application > Utilities** (Ctrl+U).
3. Select **`ImportcdDimMessage` — Customizable procedures (Single EXE or Data DLL)**.
4. Generate and compile the APP. The three message procedures are ready to call.

## Use them in your code

```clarion
cdDimMessage('Hello World','Information')
Result = cdDimMessageInfo('The operation completed','Information')
CASE cdDimMessageError('Try again?','Error')
OF 1
  ! Respond to the selected button.
END
```

The functions support the normal optional `MESSAGE()` arguments. If you save a button response, declare the receiving variable as `UNSIGNED`.

The `CDMessageAutoDimPushSuppression` and `CDMessageAutoDimPopSuppression` DLL declarations in the global template are used by these **three imported colored-message procedures**. You do not call either function yourself; the imported procedures use them automatically.


## Multi-DLL applications

The two import utilities have different jobs:

| APP | Select this utility |
|---|---|
| **Data DLL** (or one APP owning the procedures) | **`ImportcdDimMessage` — Customizable procedures (Single EXE or Data DLL)** |
| **Every other APP that calls them** | **`ImportcdDimMessageDec` — Customizable procedure declarations (other APPs in multi-DLL solution)** |

Import the first utility **once**, into the owning APP. Use the second in each other DLL or EXE APP that needs to call the procedures. **Never import both into the same APP.** Compile the Data DLL before building its callers.

These utility entries automatically import the installed procedure files from Clarion's `accessory\libsrc\win` location. You do not need to manually locate them.

For complete multi-DLL setup, see [Multi-DLL Applications](multi-dll.md).

[Home](../index.md) | [Automatic Message Dimming](automatic-messages.md)
