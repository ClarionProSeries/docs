---
title: "Introduction to xSearch"
summary: "Find, tag and reuse record selections in Clarion ABC browses."
description: "An overview of searching and tagging, and how xSearch differs from ordinary browse filtering."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "ABC Browse", "search", "tagging"]
page_type: "overview"
last_updated: "2026-11-07"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# Introduction to xSearch

Finding one record is easy when you know the exact customer number or sort key. Finding **all the records that meet a useful description** is a different job. xSearch is designed for that job.

Add xSearch to an existing Clarion ABC Browse and let users search record content, including fields they cannot conveniently locate through the browse's current sort or locator. Matches become tagged records, with a visible indicator in the browse. The user can then decide what to do with that selection.

## Search and tag instead of just filter

A normal browse filter controls **which records are displayed**. When the filter changes, that view changes with it.

xSearch can search across multiple fields and **remember which records matched or were selected**. The tag is independent of the current browse display. A user can find records, review the selection, add or remove tags manually, and then use the tagged set for another operation. The developer chooses how long tags remain available.

For example, someone might search for a customer by a person's name, tag several records that need follow-up, switch to a different browse order, and then view only the tagged customers. They don't have to reconstruct their selection simply because the browse display changes.

## Highlights

- **Search by content:** search the primary file, with optional related-file searching.
- **Reusable selections:** tag search matches, tag individual records, tag all, untag all, or cycle between all, tagged, and untagged views.
- **Clear tagged-record indicators:** show a checkmark beside text in an existing LIST column and optionally color the full tagged row. The row-color option is controlled per browse and does not replace the normal selected-row highlight. No extra dictionary field is needed for queue-backed tags.
- **Flexible storage:** use a Local Queue, Global Queue, External File, or a field in the record, depending on the job.
- **Lookup searching:** match meaningful displayed text as well as stored field codes.
- **Saved selections and history:** keep named tag sets and recall recent searches.
- **SQL support:** optional pre-filtering can reduce rows transferred from an SQL server.
- **Reports and processes:** let a configured Clarion report, process, or supported Fomin Report Builder `RunTimeReport` use the selected tagged records without rebuilding the selection. The usual Print button or menu can call the report.
- **Export:** create CSV, UTF-8 CSV, TSV, XML, JSON, HTML, and Excel XLSX output.
- **Language support:** choose English or Spanish and add other languages using separate Clarion translation-source files.
- **Your choice of interface:** use the built-in dialogs, import seven familiar Classic windows, or import a coordinated Modern set with navy headers and flat layouts. You can edit either style in Window Designer or mix individual windows.

## Put tagged records to work

A user can tag a set of customers and then **print a report containing only those customers**, or **run a process on the same subset**, when the receiving report or process has its xSearch extension configured for matching tag storage. The user can be asked whether to restrict the operation to tags, with the number tagged shown in the prompt. The report's existing selection and sort remain in effect; the report can be invoked through its ordinary button or menu. See [Print Reports and Run Processes Using Tags](guides/tagged-reports-processes.md).

## Flexible enough for different applications

A small single-EXE program may use a Local Queue and require little shared configuration. A multi-DLL program can define shared queues or persistent tag files for selected data files, while keeping other browses local. This is intentional flexibility: storage is chosen per use, rather than forcing every browse to behave alike.

## Getting started

Begin with [Installation](install.md), [Registering the Template](template-registration.md), and [Using the Template](template-usage.md). If your application uses several APPs and DLLs, follow the dedicated [Multi-DLL Guide](guides/multi-dll.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
