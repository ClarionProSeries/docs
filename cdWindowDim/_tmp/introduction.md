[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# cdWindowDim - Introduction

In a busy Clarion application, several windows may be open at once. When a user opens an edit form from a browse, the background can compete for attention. cdWindowDim gently changes the parent window's appearance while the active form stays clear.

**To get started, add cdWindowDim - Global Settings to your APP and compile.** That enables automatic browse/update and message dimming without editing individual procedures.

Most developers can use the default black dimming effect. The built-in Clarion color picker makes it easy to use blue, green, or another color for particular windows. The strength setting controls how much of the selected color covers the parent.

## Messages can stand out, too

**Automatic message dimming is enabled by default.** Standard `MESSAGE()`, `STOP()` and `HALT()` calls—including Clarion-generated prompts such as *Are you sure you want to delete?*—dim the window behind the message without changing your calling code. Supported CapeSoft MessageBox windows work too. You can turn this off globally or disable message dimming for a particular procedure.

For a different effect on an individual message, import the optional [black, blue, and red message procedures](guides/custom-messages.md). They follow normal `MESSAGE()` arguments and return values. You can use them in a single EXE or share them through a Data DLL.

## More than browse windows

Supported ABC and Legacy browse/update operations can use automatic dimming. For other windows, you can place **Dim Parent Window** and **Restore Parent Window** around a normal procedure call or a report preview.

When a window is launched with START, the calling procedure continues while the child stays open. cdWindowDim provides a way to keep the parent dimmed until that started child actually closes. See [Dimming a Window Started with START](guides/started-children.md).

The product also supports multiple outstanding child operations and lets an application offer its users a runtime Enable/Disable control.

## Where to begin

Start with [Getting Started](getting-started/index.md) for the simplest browse example. Use the [Task Guides](guides/index.md) for manual windows, START, runtime controls, appearance choices, and multi-DLL applications.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

For an unrecognized custom message window, the optional [Custom Message Window extension](guides/custom-message-windows.md) dims its owner without changing your message procedure or enabling global automatic detection.
