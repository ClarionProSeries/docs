
[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)

# Manual Dim and Restore

Use the **vuFileTools - Dim Parent Window** code template immediately before the procedure call and **vuFileTools - Restore Parent Window** immediately afterward. The equivalent Clarion code is:

```clarion
DimResult = vuFTDimWindow(0{PROP:Handle},90)
MyUpdateProcedure()
RestoreResult = vuFTRestoreWindow(0{PROP:Handle})
```

Declare `DimResult` and `RestoreResult` as LONG variables if you want to capture results. The parent handle must be the same for Dim and Restore.

For report-preview or custom-window calls, use the same sequence. **Do not restore immediately after START.** The launched child continues running. Use [Dimming a Window Started with START](started-children.md) instead.

When Window Dimming is enabled, the global template supplies its MAP declarations. For a fully hand-coded application, see [Hand-Coded Integration](hand-coded.md) for the nine developer-facing function declarations, examples, and linking instructions.

[Home](../index.md) | [All functions](../functions/index.md) | [Categories](../categories/index.md)