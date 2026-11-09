---
title: "Getting Started with xSearch"
summary: "The quickest path to searching and tagging a Clarion ABC Browse."
description: "The quickest path to searching and tagging a Clarion ABC Browse."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "ABC Browse", "search", "tagging"]
page_type: "overview"
last_updated: "2026-11-07"
---

[Home](../index.md) | [Getting Started](index.md) | [Using the Template](../template-usage.md) | [Task Guides](../guides/index.md) | [What's New](../whatsnew.md)

# Getting Started

For a straightforward first test, choose a single-EXE ABC application and one browse. You can add xSearch without modifying the data dictionary just to hold tags.

## First search

1. [Install](../install.md) and [register](../template-registration.md) xSearch if needed.
2. Add the xSearch global extension to the APP, then follow its **Start Here** tab for the setup sequence.
3. Open an ABC Browse's Window Designer and place the browse-specific Search control.
4. Configure the primary file, LIST, Local Queue unique field, and icon field.
5. **Before compiling, open the LIST Formatter for that field and set its icon display to Transparent, not Normal.** Normal leaves a visible icon bounding rectangle on nearby rows; Transparent lets the checkmark sit cleanly alongside the column text. See [Browse Setup and LIST Icons](../guides/browse-setup.md).
6. Compile and search for a known value. The matching record should receive a tag icon.
7. Optionally open the Search control's **Appearance** tab and enable **Highlight tagged rows** to color the entire tagged LIST row.

**Next step: print or process the selection.** Add the relevant **xSearch for Report** or **xSearch for Process** extension to an appropriate procedure, configure matching tag storage, and run the procedure normally. A tagged-record prompt can offer to run it on just the selected records. See [Reports and Processes Using Tags](../guides/tagged-reports-processes.md).

If you want editable dialogs with a coordinated modern appearance, import the **Modern** window set in **Application > Template Utility**, or import the familiar **Classic** set. Both are optional; see [Customize xSearch Windows](../guides/custom-windows.md).

## Follow the guide for your goal

| Guide | When to use it |
|---|---|
| [Add xSearch to a Browse](../guides/browse-setup.md) | Configure required fields, icon area, and the Search button |
| [Single-EXE Application](../guides/single-exe.md) | Start with the simplest supported application layout |
| [Multi-DLL Application](../guides/multi-dll.md) | Use a multi-DLL setup example with explicit shared declarations |
| [Task Guides](../guides/index.md) | Add controls, choose storage, translate or export |

Installation and template registration are **separate top-level manual pages**. Getting Started only provides a quick path into them, rather than housing every setup topic.

[Home](../index.md) | [Getting Started](index.md) | [Using the Template](../template-usage.md) | [Task Guides](../guides/index.md) | [What's New](../whatsnew.md)
