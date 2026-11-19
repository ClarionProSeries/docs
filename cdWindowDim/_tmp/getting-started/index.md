[Home](../index.md) | [Getting Started](index.md) | [Using the Template](../template-usage.md) | [Task Guides](../guides/index.md) | [What's New](../whatsnew.md)

# Getting Started

## Add the global extension. Compile. Done.

1. [Install](../install.md) and [register](../template-registration.md) the cdWindowDim template.
2. Open your Clarion APP's **Global Extensions** and add **cdWindowDim - Global Settings**.
3. **Generate and compile the application.**

That's it. With the default settings, cdWindowDim automatically dims supported **browse windows while their update forms are open** and dims the parent behind standard **`MESSAGE()`, `STOP()` and `HALT()` dialogs**, including Clarion-generated confirmations. The parent returns to normal when the form or message closes. Supported CapeSoft MessageBox windows are also handled automatically.

You don't have to add an extension to every browse, change your `MESSAGE()` calls, or insert any code templates to get the standard effect. The global extension applies the normal procedure support for you.

**Important:** The application EXE needs a Windows 8-or-later compatibility manifest for the visual effect to appear. See [Troubleshooting](../troubleshooting.md) if a window does not dim.

## Want to customize it?

- [Window Appearance](../guides/window-appearance.md): choose a different color or strength, globally or for one browse.
- [Automatic Message Dimming](../guides/automatic-messages.md): change the message behavior for an APP or individual window.
- [Custom Message Windows](../guides/custom-message-windows.md): add the optional local extension to a message WINDOW that you wrote yourself.
- [Manual Dim and Restore](../guides/manual-dimming.md): dim other windows or report previews.
- [Dimming a Window Started with START](../guides/started-children.md): keep a parent dimmed until a separately threaded child closes.
- [Runtime Dimming Controls](../guides/runtime-controls.md): add a runtime enable/disable option.
- [Multi-DLL Applications](../guides/multi-dll.md): apply the global extension in the APPs that contain windows you want covered.

For additional options, see [Using the Template](../template-usage.md).

[Home](../index.md) | [Getting Started](index.md) | [Using the Template](../template-usage.md) | [Task Guides](../guides/index.md) | [What's New](../whatsnew.md)
