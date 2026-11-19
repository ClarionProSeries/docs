[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# What's New in cdWindowDim

The first release of cdWindowDim makes it easier to draw attention to the active window. It can automatically dim a browse while an update form is open, then restore the browse when the form closes. Manual controls provide the same effect for other window workflows.

- Automatic dimming for supported ABC and Legacy browse/update windows.
- **Custom Message Window** procedure extension for developer-written or other supported message windows. Add the extension to the message window procedure; it works with the automatic-message option on or off. See [Custom Message Windows](guides/custom-message-windows.md).
- **Add the global extension and compile.** Automatic browse and MESSAGE / STOP / HALT dimming works with the standard settings, including Clarion confirmations and supported CapeSoft MessageBox windows. No per-window setup or rewritten MESSAGE calls are needed.
- Importable Clarion message procedures with black, blue and red parent overlays, usable in single-EXE and multi-DLL applications.
- Simple black default appearance, or custom colors and strength at the global or procedure level.
- Manual Dim and Restore code templates for synchronous windows and report previews.
- START window support with an explicit parent registration and child closing notification.
- Runtime Enable, Disable, Toggle, and Get Dimming Status commands.
- Global and individual options to turn dimming off when you want to.
- Support for single-EXE and multi-DLL Clarion applications.

Release date: 11-18-26.

See [Automatic Message Dimming](guides/automatic-messages.md) and [Custom Colored Message Procedures](guides/custom-messages.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
