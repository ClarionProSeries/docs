---
title: "Troubleshooting xSearch"
summary: "Common setup, compiler and tag display questions."
description: "xSearch setup, compilation, and multi-DLL troubleshooting."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "tagging"]
page_type: "guide"
last_updated: "2026-11-07"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)

# Troubleshooting xSearch

## The LIST column does not display a tag icon

The field selected on the Search control's **Tag icons** tab needs an icon area in the LIST Formatter. Set that column's icon display to **Transparent**, not Normal. Normal can leave a visible icon bounding box on untagged rows. Choosing a field in xSearch does not configure the LIST Formatter automatically.

## The browse reports a missing record identifier when compiling

For Local Queue, Global Queue, or External File storage, make sure the Search control's **Tag storage > Tag store settings...** contains the unique record **field**, not the KEY name. For a Customer browse, use a field such as CUS:CustNumber. The compiler may report No matching prototype available for SetCurrentRecord() when the required configuration is missing. See [Browse Setup](browse-setup.md) and [Tag Storage](tag-storage.md).

## External File storage produces missing-symbol errors

Verify that the Data DLL global extension, the Browse DLL global extension, and the Search control all select the file-backed Customer storage method. Their unique fields must match. If the settings have changed, use **Clean Solution** and then **Rebuild Solution** to ensure shared declarations are regenerated together.

## Where is the xSearch INI file?

A simple filename is resolved beside the running EXE. An explicit absolute path or an initialized runtime variable can select a different writable location. The INI need not exist until a setting is written. See [INI Files and Remembered Settings](ini-settings.md).

## Where are Tag All, Untag All, and Show Tagged?

Place the main xSearch Search control on the window first. Its companion control templates appear in the Control Templates toolbox afterward.

## How do I reopen a Search control's prompts?

Right-click the browse procedure in the Clarion application tree, select **Extensions**, and double-click the xSearch extension. Or right-click the Search control in Window Designer and select **Actions**. Double-clicking a control in Window Designer opens code embeds.

## Export shows colors or numeric values instead of browse data

If you enable **Highlight tagged rows**, an older export engine can read the additional four color fields attached to each LIST column rather than the visible data. This may appear as repeated values like `13432319`, `-1`, or `1` in every export format. The current xSearch 5.0 exporter updates the live LIST-to-queue field mapping without clearing the export column list. Install the current `xsearch.tpl` and `xsExport.clw` together, regenerate and rebuild the application (and the owning DLL if using multi-DLL), then verify an exported tagged row against the actual browse values. This is separate from the HTML/CSV/XML/JSON/XLSX format writers.

## A Modern window still looks Classic after import

Classic and Modern use the **same seven procedure names**. Check that Clarion replaced the existing procedure rather than automatically renaming the newly imported one. Then open the global xSearch **Windows** tab and verify the selected procedure. Importing the complete Modern set uses one combined TXA containing seven procedures, not seven separate import prompts. See [Custom Windows](custom-windows.md).

## A window opens with controls clipped

The redesigned Modern windows are larger than the Classic ones. The five Modern dialogs use separate saved geometry keys, so they should not restore an older, smaller Classic size. Modern Search Results also supports resizing and minimum dimensions. Confirm you have imported the current Modern TXA and are running the intended procedure before deleting your INI; deleting the INI also discards unrelated saved preferences.

## Deleted imported procedures still appear as To Do

Clarion can retain procedure references in the xSearch global extension's **Windows** selectors even after the corresponding procedures are deleted. Disable or clear those selectors as appropriate before removing unused procedures. Whether an APP displays a `To Do` entry depends on its remaining Clarion procedure references; this is separate from choosing Classic or Modern layouts.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)
