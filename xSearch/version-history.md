---
title: "xSearch - Version History"
summary: "xSearch releases and their key changes."
description: "xSearch versions and their principal changes, newest first."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "ABC Browse", "search", "tagging"]
page_type: "changelog"
last_updated: "2026-11-07"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# xSearch - Version History

This is the first public Version 5 build. Internal development builds are not separate releases.

| Version | Build | Release date | Highlights |
|:---|:---|:---|:---|
| **5.0** | **247** | **11-7-2026** | See the Version 5.0 details below. |

### Version 5.0 details

**Appearance:** On the browse's **Search this browse and tag what it finds > Appearance** tab, enable **Highlight tagged rows** and choose the background color. Existing tag icons still work, and normal selection highlighting remains. The option defaults to off.

**Editable windows:** Use **Application > Template Utility** to import **Classic** or **Modern**, all seven windows from one TXA or individually. The two sets retain the same procedure names; the original class-embedded windows are unchanged. Modern Search, Fields, Tag Sets, Results and Found Record have new layouts; Export Data and Export Column Settings retain their existing modern layouts.

**Window state:** The five redesigned Modern dialogs use separate geometry keys from the original Classic windows, avoiding inherited window-size conflicts. Search Results supports resizing.

**Search and workflow:** Version 5 adds search history, named tag sets, lookup-text matching, optional SQL pre-filtering, and tag counts. After tagging, developers can configure reports and processes to use that selection: a report can ask **"Print only tagged records? (2 tagged)"** while preserving its normal filters, ranges and sort order. The same principle applies to process procedures. See [Tagged Reports and Processes](guides/tagged-reports-processes.md).

**Procedure extensions:** Documented five procedure extensions: standard Clarion Report, Process, **Fomin Report Builder `RunTimeReport`**, plus the two extensions included automatically in imported Search and Export windows. See [Procedure Extensions](guides/procedure-extensions.md).

**Export:** CSV, UTF-8 CSV, TSV, XML, JSON, HTML and Excel XLSX are available. The export mapping supports LISTs with tagged-row color fields; English/Spanish dialogs and custom translation sources are available.

For setup steps and the complete feature explanation, see [What's New](whatsnew.md), [Browse Setup](guides/browse-setup.md), and [Custom Windows](guides/custom-windows.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
