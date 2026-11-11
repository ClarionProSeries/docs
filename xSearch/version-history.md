---
title: "xSearch - Version History"
summary: "xSearch releases and their key changes."
description: "xSearch versions and their principal changes, newest first."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "ABC Browse", "search", "tagging"]
page_type: "changelog"
last_updated: "2026-11-10"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# xSearch - Version History

This is the first public Version 5 build. Internal development builds are not separate releases.

| Version | Build | Release date | Highlights |
|:---|:---|:---|:---|
| **5.0** | **248** | **11-10-2026** | Refined Classic export dialogs and normalized template typography. See details below. |

### Version 5.0 details

**Build 248:** Refined Classic export screens, including default and customizable dialogs, and normalized template typography across Clarion versions. The About tab displays centrally defined version, build, release date and copyright values. No export logic or public class APIs changed.

**Appearance:** On the browse's **Search this browse and tag what it finds > Appearance** tab, enable **Highlight tagged rows** and choose the background color. Existing tag icons still work, and normal selection highlighting remains. The option defaults to off.

**Editable windows:** Importing windows is optional. The built-in Export Data and Export Column Settings dialogs use the Classic Clarion appearance beginning with Build 248. Use **Application > Template Utility** to import **Classic** or **Modern**, all seven windows from one TXA or individually. The five other built-in class windows are unchanged. The Modern imported Search, Fields, Tag Sets, Results and Found Record dialogs have newer layouts, and the Modern export TXAs retain their existing flat styling. Both imported sets keep the same procedure names. See [Export Dialogs and Custom Windows](guides/export-dialogs.md).

**Window state:** The five redesigned Modern dialogs use separate geometry keys from the original Classic windows, avoiding inherited window-size conflicts. Search Results supports resizing.

**Search and workflow:** Version 5 adds search history, named tag sets, lookup-text matching, optional SQL pre-filtering, and tag counts. After tagging, developers can configure reports and processes to use that selection: a report can ask **"Print only tagged records? (2 tagged)"** while preserving its normal filters, ranges and sort order. The same principle applies to process procedures. See [Tagged Reports and Processes](guides/tagged-reports-processes.md).

**Procedure extensions:** Documented five procedure extensions: standard Clarion Report, Process, **Fomin Report Builder `RunTimeReport`**, plus the two extensions included automatically in imported Search and Export windows. See [Procedure Extensions](guides/procedure-extensions.md).

**Export:** CSV, UTF-8 CSV, TSV, XML, JSON, HTML and Excel XLSX are available. The export mapping supports LISTs with tagged-row color fields; English/Spanish dialogs and custom translation sources are available.

For setup steps and the complete feature explanation, see [What's New](whatsnew.md), [Browse Setup](guides/browse-setup.md), and [Custom Windows](guides/custom-windows.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
