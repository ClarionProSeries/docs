
[Home](../index.md) | [Automatic Message Dimming](automatic-messages.md)

# Custom Colored Message Procedures

Before importing or using these optional procedures, uncheck **Disable window dimming templates** in the **vuFileTools Initialization** global extension. The procedures use the Window Dimming functions supplied by vuFT5.dll.

vuFileTools includes three optional Clarion procedures for choosing a specific dimming color behind one message. They accept ordinary `MESSAGE()` arguments and return the selected button result:

| Procedure | Effect |
|---|---|
| `vuFTDimMessage` | Black overlay |
| `vuFTDimMessageInfo` | Blue overlay |
| `vuFTDimMessageError` | Red overlay |

You do not need these procedures for normal `MESSAGE()`, `STOP()` or `HALT()` calls: those can already dim automatically when the global automatic-message setting is enabled (preselected when Window Dimming is enabled).

## Import into a single-EXE application

1. Add the product's **global extension** to your APP.
2. Open **Application > Utilities** (Ctrl+U).
3. Select **`ImportvuFTDimMessage` — Customizable procedures (Single EXE or Data DLL)**.
4. Generate and compile the APP. The three message procedures are ready to call.

## Use them in your code

```clarion
vuFTDimMessage('Hello World','Information')
Result = vuFTDimMessageInfo('The operation completed','Information')
CASE vuFTDimMessageError('Try again?','Error')
OF 1
  ! Respond to the selected button.
END
```

The functions support the normal optional `MESSAGE()` arguments. If you save a button response, declare the receiving variable as `UNSIGNED`.

The `vuFTMessageAutoDimPushSuppression` and `vuFTMessageAutoDimPopSuppression` DLL declarations in the global template are used by these **three imported colored-message procedures**. You do not call either function yourself; the imported procedures use them automatically.


## Multi-DLL applications

The two import utilities have different jobs:

| APP | Select this utility |
|---|---|
| **Data DLL** (or one APP owning the procedures) | **`ImportvuFTDimMessage` — Customizable procedures (Single EXE or Data DLL)** |
| **Every other APP that calls them** | **`ImportvuFTDimMessageDec` — Customizable procedure declarations (other APPs in multi-DLL solution)** |

Import the first utility **once**, into the owning APP. Use the second in each other DLL or EXE APP that needs to call the procedures. **Never import both into the same APP.** Compile the Data DLL before building its callers.

These utility entries automatically import the installed procedure files from Clarion's `accessory\libsrc\win` location. You do not need to manually locate them.

For complete multi-DLL setup, see [Multi-DLL Applications](multi-dll.md).

[Home](../index.md) | [Automatic Message Dimming](automatic-messages.md)