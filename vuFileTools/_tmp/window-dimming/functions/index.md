
[Home](../../index.md) | [Window Dimming](../index.md) | [Hand-Coded Integration](../hand-coded.md)

# Window Dimming Function Reference

For most applications, use the Window Dimming extension and its code templates. These functions are documented for developers who prefer hand-coded calls.

- [vuFTDimWindow](vuFTDimWindow.md) — Dim a parent window with the standard black appearance.
- [vuFTDimWindowEx](vuFTDimWindowEx.md) — Choose RGB color and dimming strength.
- [vuFTRestoreWindow](vuFTRestoreWindow.md) — Restore a manually dimmed parent.
- [vuFTWindowRegisterChild](vuFTWindowRegisterChild.md) — Associate a START child with its parent.
- [vuFTWindowClosing](vuFTWindowClosing.md) — Release a START child when it closes.
- [vuFTSetDimmingEnabled](vuFTSetDimmingEnabled.md) — Enable or disable dimming while the application runs.
- [vuFTGetDimmingEnabled](vuFTGetDimmingEnabled.md) — Read the runtime dimming state.
- [vuFTRegisterMessageWindow](vuFTRegisterMessageWindow.md) — Register a custom message window.
- [vuFTUnregisterMessageWindow](vuFTUnregisterMessageWindow.md) — Restore the parent when that message window closes.

The automatic MESSAGE and browse helpers are supplied by the template and optional imported message procedures. They do not need separate calls from ordinary application code.

[Home](../../index.md) | [Window Dimming](../index.md)