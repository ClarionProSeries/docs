[Home](index.md) | [Getting Started](getting-started/index.md) | [Task Guides](guides/index.md)

# Using the cdWindowDim Template

## 1. Add the global extension and compile

1. In Clarion, open **Global Extensions** for the APP and add **cdWindowDim - Global Settings**.
2. **Generate and compile your application.**

**That's all you need for automatic dimming.** By default, supported browse/update windows and standard `MESSAGE()`, `STOP()` and `HALT()` dialogs dim their parent while another window needs attention. The default appearance is black at strength 90. Supported CapeSoft MessageBox windows work automatically too.

The global extension supplies the normal window procedure support. **You do not need to add extensions to each browse or change any MESSAGE calls.**

Use the global extension's **Window Dimming** tab only if you want to change the appearance, turn off an automatic feature, or disable the template.

## 2. Optional procedure extensions

The global extension automatically applies **cdWindowDim - Window and Message Dimming** to eligible window procedures. Open that procedure's Extensions list only to customize an individual window or disable its dimming.

The separate **cdWindowDim - Custom Message Window** extension is for a message WINDOW that you wrote, or an otherwise unrecognized third-party message window. Add it to the procedure that **displays the message window**, not the browse or form that opens it. See [Custom Message Windows](guides/custom-message-windows.md).

Normal `MESSAGE()`, `STOP()` and `HALT()` calls and supported CapeSoft MessageBox windows do not need this custom extension.

## 3. Code templates

Insert these code templates at the appropriate **executable embed** in your procedure:

| Code template | What it does | Instructions |
|---|---|---|
| **Dim Parent Window** | Dims a parent before a synchronous procedure or report preview | [Manual Dim and Restore](guides/manual-dimming.md) |
| **Restore Parent Window** | Restores the parent after that call finishes | [Manual Dim and Restore](guides/manual-dimming.md) |
| **Register Started Procedure** | Connects a child launched with `START` to its dimmed parent | [START Procedures](guides/started-children.md) |
| **Started Child Closing** | Restores the parent when the started child closes | [START Procedures](guides/started-children.md) |
| **Enable Dimming** | Turns the visual effect on while running | [Runtime Controls](guides/runtime-controls.md) |
| **Disable Dimming** | Turns the visual effect off while running | [Runtime Controls](guides/runtime-controls.md) |
| **Toggle Dimming** | Switches the current on/off state | [Runtime Controls](guides/runtime-controls.md) |
| **Get Dimming Status** | Places the current state into a LONG variable | [Runtime Controls](guides/runtime-controls.md) |

Each code template offers **Disable this code template** so you can suspend it without deleting its settings. Match each Dim with its appropriate Restore, or use the two START code templates together.

## 4. Optional black, blue, and red message procedures

If you want to choose a particular message color, use **Application > Utilities** (Ctrl+U) and the entries provided by cdWindowDim:

| Where you want the procedures | Select this utility in Clarion |
|---|---|
| Single EXE or one owning Data DLL APP | **ImportcdDimMessage** — Customizable procedures (Single EXE or Data DLL) |
| Other APPs using the procedures from the Data DLL | **ImportcdDimMessageDec** — Customizable procedure declarations (other APPs in multi-DLL solution) |

The first imports the actual black, blue and red procedures; the second lets other APPs call them. Do not import both into the same APP. See [Custom Colored Message Procedures](guides/custom-messages.md) or [Multi-DLL Applications](guides/multi-dll.md).

## 5. Multi-DLL and hand-coded applications

Use [Multi-DLL Applications](guides/multi-dll.md) when your windows or colored-message procedures are spread across APPs. If you deliberately want to call the DLL directly, see [Hand-Coded Integration](hand-coded-integration.md). For practical generated code, **open the supplied demo APP in Clarion and select Source** to see the calls in context.

**Required:** The application EXE needs a compatible Windows manifest; see [Requirements](requirements.md).

[Home](index.md) | [Task Guides](guides/index.md)
