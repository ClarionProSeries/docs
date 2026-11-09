---
title: "What xSearch Can Do"
summary: "Practical search, tag, export and customization capabilities."
description: "How xSearch provides reusable selections beyond ordinary browse filtering."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "ABC Browse", "search", "tagging"]
page_type: "overview"
last_updated: "2026-11-07"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# What xSearch Can Do for Your Clarion Application

## Find records without knowing the key

Users often remember a name, company, address, or description instead of the exact key value. xSearch examines the chosen fields in the primary file and can include related-file fields when those relationships matter to a search.

## Build a working selection

Search matches are tagged. Users can adjust that selection using Tag/Untag, Tag All, or Untag All and switch the browse among All, Tagged, and Untagged views. A tag icon can appear beside an existing LIST column without adding a separate column or dictionary field for queue-based tags. **Optional tagged-row highlighting** colors the background across the tagged row, making selected records easier to see even in a wide browse. The normal selected-row highlight remains available. Configure this on the browse Search control's **Appearance** tab.

## Keep tags as long as the task requires

| Need | Storage choice |
|---|---|
| Tags for one browse window | Local Queue |
| Tags for the current application session | Global Queue |
| Tags available after the program restarts | External File |
| Tags stored directly in each data record | This File |

Different files can use different shared-storage methods in the same application. See [Choosing Tag Storage](guides/tag-storage.md).

## Make searches more useful

Lookup matching can make a numeric or abbreviated code searchable by the meaningful text users see. Related-file searches can find a primary record because of information in its associated records. Named tag sets and search history help with repeated jobs.

## Integrate with the rest of your application

**Print a report for just the selected records.** After searching and tagging customers, add **xSearch 5.0 for Report** to the Customer report procedure. The report can prompt **"Print only tagged records? (2 tagged)"** and, when selected, print the tagged subset without recreating the browse search. The normal Print button or menu can call the report; the filtering comes from the configured report extension, not the button. The report's own range and sort still apply.

**Run a process on the same subset.** Add **xSearch 5.0 for Process** to a process procedure and match its tag storage to the browse. The process can similarly ask whether to operate on tagged records only. For Fomin Report Builder, a separate **xSearch 5.0 for Fomin Report Builder** extension supports tagged-only output in Fomin **`RunTimeReport`** procedures; it must be configured with matching shared tag storage.

**Export the selection.** Version 5 supports CSV, UTF-8 CSV, TSV, XML, JSON, HTML, and Excel XLSX. Optional SQL pre-filtering can reduce server data transfer where supported.

Shared tag storage must be configured correctly: tags do **not** filter unrelated reports automatically merely because the file or key is similar. See [Reports and Processes Using Tags](guides/tagged-reports-processes.md).

## Match your application's language and design

Choose English or Spanish dialogs and add other languages using a Clarion translation source. For the interface, keep the built-in windows or import **Classic** or **Modern** editable windows. Both import sets offer the same seven procedures; the Modern set provides a coordinated navy-header design for the five older dialogs, while Export Data and Export Column already use that design. Select the procedures you want in the global extension's **Windows** tab. See [Customize xSearch Windows](guides/custom-windows.md).

Start with [Using the Template](template-usage.md) or visit the [Task Guides](guides/index.md) to configure a specific feature.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
