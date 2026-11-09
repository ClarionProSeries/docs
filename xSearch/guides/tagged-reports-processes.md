---
title: "Print Reports and Run Processes Using Tagged Records"
summary: "Use a tagged browse selection in Clarion reports and processes."
description: "Configure xSearch report and process extensions to optionally work with tagged records."
keywords: ["xSearch", "Clarion", "tagged records", "reports", "print", "processes"]
page_type: "guide"
last_updated: "2026-11-07"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)

# Print Reports and Run Processes Using Tagged Records

**Searching and tagging are only the beginning.** xSearch lets a user select records in an ABC Browse and then use that selection when printing a report or running a process. You do not have to recreate the same selection in a second window.

## Example: print only the selected customers

1. In the Customer browse, search for the customers you want and tag them. You can also use **Tag**, **Tag All**, and **Untag** to adjust the selection.
2. In the **Clarion report procedure** that prints Customer records, add the **xSearch 5.0 for Report** procedure extension. Configure the tag storage and unique field to match the browse. The same primary file must be accessible to the report.
3. In the extension's **Question** tab, choose whether to ask the user to restrict the report to tagged records. You can include the count, producing a question such as **"Print only tagged records? (2 tagged)"**. Configure what to do when no records are tagged.
4. Run the report as usual. For example, a **Print** button or menu item can call the report procedure with **Call a Procedure**. There is no special xSearch code required on the button. The **report procedure extension** performs the tag-based restriction.
5. If the user chooses the tagged subset, the report prints qualifying tagged records rather than all records. Its existing range, filter, and sort settings still apply.

**Important:** A report is **not automatically filtered just because its key or file matches the browse**. It needs the xSearch report extension and compatible tag storage configured. The calling button merely starts the report; it need not be located on the tagging browse.

## Process the same selection

Use **xSearch 5.0 for Process** on a Clarion process procedure. Configure the same tag storage and unique field, then choose the prompt and no-tags behavior on its **Question** tab. When the process is run, xSearch can skip records that are not tagged while retaining the process's existing selection and sorting rules. Its progress indicator counts records read, not just the tagged records processed.

## Fomin Report Builder: print the tagged subset

xSearch 5.0 also includes a dedicated **xSearch 5.0 for Fomin Report Builder** procedure extension. Add it to a Fomin **`RunTimeReport`** procedure, match the tagged browse's **External File**, **This File**, or **Global Queue** storage settings and unique field, and configure the same **Question** choices used by the standard report extension. When tagged-only printing is selected, it skips untagged records during the Fomin runtime report's normal record traversal.

This extension is intended specifically for Fomin Report Builder `RunTimeReport` procedures. **It does not make every Fomin report tagged-only automatically**, and the separate Fomin product must be installed to create those procedures. The calling button can remain an ordinary **Call a Procedure** button.

See [Procedure Extensions](procedure-extensions.md) for all five xSearch procedure extensions and the difference between developer-added report/process extensions and imported-window support extensions.

## Choosing storage that the report or process can access

The Browse **Local Queue** exists only inside that browse procedure and cannot serve as a shared selection for an independent report or process. To reuse tags between procedures, select an appropriate shared method such as **Global Queue** (until the application exits), **External File** (across sessions), or **This File** (tag field in the actual record), and configure matching definitions. The report/process extension supports the applicable **External File**, **This File**, and **Global Queue** options.

For multi-DLL applications, put shared declarations and matching settings in the participating APPs. A report may live in a separate Reports DLL and be called from the main EXE; avoid introducing circular DLL dependencies. See [Multi-DLL Setup](multi-dll.md) and [Choose Where Tags Are Stored](tag-storage.md).

## When no records are tagged

The **Question** tab controls whether to ask about tagged records, whether to show the count, and whether a no-tags run should process everything, nothing, or ask anyway. These are configurable choices, **not an unconditional promise that every report is tagged-only**.

See [Search and Tag Controls](control-templates.md) for the browse buttons, and [Export Records](export.md) to create data files from tagged records.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)
