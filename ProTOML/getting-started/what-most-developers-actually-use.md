---
title: "What Most Developers Actually Use"
summary: "A practical overview of the high-level ProTOML methods most Clarion applications use first."
description: "The normal template-first workflow and the small set of high-level ProTOML methods used for everyday work."
keywords: ["ProTOML", "Clarion", "getting started", "common methods"]
page_type: "guide"
last_updated: "2026-10-07"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# What Most Developers Actually Use

ProTOML includes a high-level Clarion wrapper and 40 low-level API functions. Most developers use the wrapper supplied by the global template and never call the API functions directly.

The API remains available when direct or specialized access is needed. Ordinary GROUP, QUEUE, and FILE RECORD declarations can be mapped directly; BINDABLE is not required.

## The common workflow

In many cases, this is all you need:

1. Add the ProTOML global template to the EXE app.
2. Enter the developer license in the template.
3. Write the high-level calls needed by the application.
4. Compile and run the application.

## Methods most developers use first

| Method | Typical use |
|---|---|
| [StartDocument](../classes/StartDocument.md) | Create a new empty document. |
| [SetString](../classes/SetString.md), [SetLong](../classes/SetLong.md), [SetBool](../classes/SetBool.md) | Store individual settings. |
| [WriteGroup](../classes/WriteGroup.md) / [ReadGroup](../classes/ReadGroup.md) | Store and restore a GROUP. |
| [WriteRecord](../classes/WriteRecord.md) / [ReadRecord](../classes/ReadRecord.md) | Store and restore the current FILE record buffer. |
| [WriteQueue](../classes/WriteQueue.md) / [ReadQueue](../classes/ReadQueue.md) | Store and restore a QUEUE. |
| [SaveMemo](../classes/SaveMemo.md) / [LoadMemo](../classes/LoadMemo.md) | Store the complete document in a MEMO field. |
| [SaveBlob](../classes/SaveBlob.md) / [LoadBlob](../classes/LoadBlob.md) | Store the complete document in a BLOB field. |
| [SaveFile](../classes/SaveFile.md) / [LoadFile](../classes/LoadFile.md) | Save and load a .toml file. |
| [GetLastError](../classes/GetLastError.md) | Read a useful error message. |

## A typical document

```clarion
Toml.StartDocument()
Toml.WriteGroup('settings',AppSettings)
Toml.WriteRecord('customer',CustomerFile:Record)
Toml.WriteQueue('contacts',ContactQueue)
Toml.SaveMemo(SettingsFile,STO:TomlMemoIndex)
```

Start with the simplest successful path first, then use the larger method and API references only when you need more.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
