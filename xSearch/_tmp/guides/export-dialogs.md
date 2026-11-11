# Export dialogs and importable windows

The xSearch 5.0 export engine provides its own dialogs. **Importing a TXA is not required to enable export.** In Build 248, the built-in Export Data and Column Settings dialogs use the traditional Classic Clarion appearance by default.

## Default behavior

Enable exporting with the xSearch application extension and configure the xExport control template. The export class supplies both built-in dialogs. It does not require separate application procedures to be imported.

The default dialogs use MS Sans Serif, neutral gray backgrounds and beveled sections. These are presentation changes only. The export formats, record selection, file writing and class interfaces are unchanged.

## Optional customizable dialogs

To modify the layout in the Clarion Window Designer, import one or both procedures:

| Procedure | Purpose |
| --- | --- |
| `xsAskExportData` | Format, destination, column choices and export options |
| `xsAskExportColumn` | Column heading and picture customization |

The imported procedures use the `xSearch xExportAltWindow` procedure extension to connect to the class. Preserve the procedure prototype, extension role configuration, and control `USE` names.

Classic imports: `xSearchClassicAllWindows.txa` for all seven dialogs, or `xSearchExportData.txa` and `xSearchExportColumn.txa` individually. The Modern set remains available separately as an **optional** imported alternative. Do not import both the Classic and Modern version of the same procedure name into one application.

The imported window substitutes for the corresponding class-supplied window only when the developer enables and selects the alternate procedure on the xSearch application extension's Windows tab.

## AnyScreen HTML5 note

Owner testing confirmed that xSearch functions in an AnyScreen HTML5 session and can generate exported files. The output file is created on the application server, not automatically delivered to the remote user's browser. Developers who need a browser download must use an appropriate AnyScreen file-delivery integration in their application. Build 248 does not include or promise automatic AnyScreen browser downloads.

## Build 248

Refined Classic export screens, including the default dialogs and the optional importable Classic versions, to match traditional Clarion styling. The Modern importable dialogs remain unchanged.
