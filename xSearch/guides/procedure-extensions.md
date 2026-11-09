---
title: "xSearch Procedure Extensions"
summary: "The five xSearch procedure extensions, including reports, processes, Fomin Report Builder, and importable windows."
description: "Understand when to use the report/process extensions and how imported xSearch windows get their behavior."
keywords: ["xSearch", "Clarion", "procedure extensions", "Fomin Report Builder", "RunTimeReport", "custom windows"]
page_type: "guide"
last_updated: "2026-11-07"
---

[Home](../index.md) | [Template Usage](../template-usage.md) | [Task Guides](index.md) | [Tagged Reports](tagged-reports-processes.md) | [Custom Windows](custom-windows.md)

# xSearch Procedure Extensions

xSearch 5.0 provides **five procedure-level extension templates**. Three are added by a developer to a report or process procedure. The other two belong to xSearch's **importable window procedures** and normally arrive with the Classic or Modern TXAs. They do **not** replace the application-level **xSearch 5.0 - Application Setup** extension or the Search and companion control templates placed on ABC Browse windows.

| Procedure extension (template identifier) | Where it belongs | Purpose |
|---|---|---|
| **xSearch 5.0 for Report** (`xSearchForReport`) | Standard Clarion report procedure | Ask whether to print only tagged records; skip untagged records when enabled. |
| **xSearch 5.0 for Process** (`xSearchForProcess`) | Clarion process procedure | Restrict processing to the tagged subset with configurable question and no-tags behavior. |
| **xSearch 5.0 for Fomin Report Builder** (`xSearchForFRB`) | Fomin Report Builder `RunTimeReport` procedure | Apply the tag selection to a Fomin runtime report. |
| **xSearch 5.0 alternate window** (`xSearchAltWindow`) | Imported Search, Fields, Tag Sets, Results or Found Record procedure | Generate the dialog behavior while the developer owns and edits the window in Window Designer. |
| **xSearch 5.0 alternate export window** (`xExportAltWindow`) | Imported Export Data or Export Column procedure | Generate the export dialog's behavior while retaining a designer-editable window. |

## Use tags in a normal Clarion report

1. Search for records and tag them in an ABC Browse.
2. Open the **report procedure**, add **xSearch 5.0 for Report** as its procedure extension, and match its **Tagged records** storage and unique-field settings to the browse.
3. In the **Question** tab, decide whether to ask **Print only tagged records?**, display the tag count, and specify behavior when nothing is tagged.
4. Run the report from its normal button or menu. The report extension, **not the calling button or a matching browse key**, performs the tag filtering. The report's existing range, filter and sort still apply.

The report and the browse must have access to compatible tags. **Local Queue** tags cannot be shared outside the browse. See [Print Reports and Run Processes Using Tagged Records](tagged-reports-processes.md) for storage and multi-DLL details.

## Use tags in a process procedure

Add **xSearch 5.0 for Process** to the process procedure, use the same tag-storage definition, and configure its **Question** tab. Once the tagged-only option is active, the extension skips untagged records. Its progress display still reflects records read, which may exceed the number actually processed. See [Tagged Reports and Processes](tagged-reports-processes.md).

## Fomin Report Builder integration

xSearch includes a dedicated **xSearch 5.0 for Fomin Report Builder** procedure extension. It is restricted to Fomin Report Builder procedures whose template is **`RunTimeReport`**; it is not a general-purpose replacement for the standard Clarion report extension.

Add it to the applicable Fomin runtime report, then set **Tagged records** and **Question** as you would for a standard report. The integration checks the shared tag store and skips untagged records while the Fomin report reads its normal data selection. Existing report selection is retained.

This support is included in xSearch; Fomin Report Builder itself is a separate product and must be present for its report procedure to exist. See [Tagged Reports and Processes](tagged-reports-processes.md) for detailed usage and shared-storage requirements.

## The two alternate-window extensions

The **five** search-related importable procedures (`xsAskSearch`, `xsAskFields`, `xsAskTagSets`, `xsShowResults`, `xsShowMatched`) carry **`xSearchAltWindow`**. This extension provides their event handling and connects window controls to the xSearch class. The window's chosen role, class parameter and return variable are configured on its **General** tab; its **Controls** tab identifies expected `USE` names.

The **two** importable export procedures (`xsAskExportData`, `xsAskExportColumn`) carry **`xExportAltWindow`**, which supplies the export dialog's generated behavior. Its **General** tab identifies whether the window is Export Data or Column Settings and names its class parameter and return variable.

**You ordinarily do not add either extension by hand.** Import the corresponding Classic or Modern TXA through **Application > Template Utility**; each procedure already contains its extension and the appropriate role settings. Edit the WINDOW in Clarion Window Designer, keeping its procedure prototype and required control `USE` names. Set **Use customized window procedures** and select your procedures on the global **Windows** tab. See [Customize xSearch Windows](custom-windows.md).

[Home](../index.md) | [Task Guides](index.md) | [Tagged Reports](tagged-reports-processes.md) | [Custom Windows](custom-windows.md)
