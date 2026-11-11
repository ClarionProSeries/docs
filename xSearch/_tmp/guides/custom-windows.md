[Home](../index.md) | [Task Guides](index.md) | [Export Records](export.md)

# Customize xSearch Windows

xSearch works with its original **built-in class windows** without requiring any imported procedures. If you want to customize the interface in Clarion Window Designer, choose between two complete sets of importable dialogs: **Classic** and **Modern**.

## Which style should I import?

| Choice | What you get | Best starting point |
|---|---|---|
| Built-in (no TXA imports) | Standard class dialogs, including Classic Export Data and Column Settings in Build 248 | Use export and search without importing any window procedures |
| **Classic importable** | Familiar original window layouts, editable in Window Designer | Adapt the familiar layout to your application's fonts and colors |
| **Modern importable** | Coordinated flat dialogs with navy headers and Segoe UI | Start with a modern appearance and customize from there |

The **five redesigned Modern dialogs** are Search Options, Fields to Search, Saved Tag Sets, Search Results and Found Record. The Modern export TXAs retain their existing appearance. In Build 248, both Classic export imports and the class-supplied Export Data and Export Column Settings windows have traditional Clarion styling. Importing a TXA does not modify the class itself; selecting an imported procedure overrides the corresponding built-in dialog.

## Import all seven at once

1. Open the application in Clarion and choose **Application > Template Utility**.
2. Select **Classic - all seven xSearch windows** or **Modern - all seven xSearch windows**.
3. Clarion imports the seven procedures **from one combined TXA**, using one import operation for the entire set. If a procedure already exists, choose the appropriate Replace/Rename action intentionally.
4. Verify the imported procedures in the application tree, then configure the global xSearch **Windows** tab as described below.

The combined Classic file is `xSearchClassicAllWindows.txa`; the combined Modern file is `xSearchModernAllWindows.txa`. Each set contains exactly seven xSearch procedures. The demo-only `xSearchInstruction` procedure is not part of either import set.

## Import individual windows

You can also select **Classic** or **Modern** for an individual dialog in the same Template Utility menu. There are **16 utility choices in all**: two complete-set imports and seven individual imports for each style.

| Procedure imported into the APP | Dialog | Classic individual TXA | Modern individual TXA |
|---|---|---|---|
| `xsAskSearch` | Search Options | `xSearchAskSearch.txa` | `xSearchModernAskSearch.txa` |
| `xsAskFields` | Fields to Search | `xSearchAskFields.txa` | `xSearchModernAskFields.txa` |
| `xsAskTagSets` | Saved Tag Sets | `xSearchAskTagSets.txa` | `xSearchModernAskTagSets.txa` |
| `xsShowResults` | Search Results | `xSearchShowResults.txa` | `xSearchModernShowResults.txa` |
| `xsShowMatched` | Found Record | `xSearchShowMatched.txa` | `xSearchModernShowMatched.txa` |
| `xsAskExportData` | Export Data | `xSearchExportData.txa` | `xSearchModernExportData.txa` |
| `xsAskExportColumn` | Export Column Settings | `xSearchExportColumn.txa` | `xSearchModernExportColumn.txa` |

The **procedure names and required interfaces are identical** in Classic and Modern. Choose one style per procedure; mixing individual Classic and Modern windows is supported. You cannot keep two procedures with the same name in one APP without renaming one and explicitly configuring the corresponding selector. When importing over existing procedures, Clarion may offer **Auto Rename**, **Replace All**, or **Prompt**; make the choice deliberately.

All 16 TXA files install directly in `accessory\libsrc\win`, beside the xSearch class source files. The Modern files have **distinct filenames**, not a Modern subdirectory.

## Enable the imported procedures

1. Open **Global Extensions > xSearch 5.0 - Application Setup > Windows**.
2. Check **Use customized window procedures**.
3. Select the imported procedure for each dialog you want to override (Search, Fields, Tags, Results, Found Record, Export Data, or Export Column).
4. A **blank procedure selector uses the corresponding built-in class window**.

You do not need to change the xSearch template or add a Classic/Modern switch. The imported procedure selected by name determines the appearance. The same names and parameters mean an existing application can switch styles without rewriting search and tagging logic.

## Edit safely in Window Designer

Open the imported procedure in Window Designer to change fonts, controls, colors, and layout. **Preserve the original procedure prototype and the control `USE` identifiers** expected by xSearch. Removing certain optional controls is supported by the alternate-window template, but renaming required controls breaks the generated bindings.

The Modern importable export dialogs retain opaque navy header backgrounds and white text. Their window definitions are unchanged in Build 248. The Classic export import definitions now match the traditional Clarion styling of the built-in export dialogs. Search and Results retain their respective style-specific designs.

The code that drives the imported windows stays in the xSearch template and classes; editing a window does not require you to duplicate its behavior in procedure embeds. The five Search/Fields/Tag Sets/Results/Found Record TXAs already include the **xSearch 5.0 alternate window** procedure extension; the two export TXAs include **xSearch 5.0 alternate export window** (`xExportAltWindow`). These extensions are **not additional imports or separate setup steps**. See [Procedure Extensions](procedure-extensions.md).

## Modern window size and INI settings

Modern Search, Fields, Tag Sets, Results, and Found Record are larger than their Classic counterparts. They save window geometry under **Modern-specific keys**, instead of inheriting a Classic window's older size. Other search, history, field and export preferences remain shared. **Modern Search Results can be resized** and enforces a minimum size to keep its controls visible.

If a procedure is still showing an old layout after an import, confirm you replaced the existing procedure rather than auto-renaming the new one, then check the selected procedure name in the global Windows tab. You do **not** normally need to delete the INI to switch styles.

See [INI Files and Remembered Settings](ini-settings.md) and [Troubleshooting](troubleshooting.md).

[Home](../index.md) | [Task Guides](index.md) | [Export Records](export.md)
