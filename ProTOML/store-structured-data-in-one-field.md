---
title: "Store Structured Clarion Data in One MEMO or BLOB Field"
summary: "Combine several Clarion structures in one field."
description: "Combine several Clarion structures in one field."
keywords: ["ProTOML", "Clarion", "MEMO", "BLOB"]
page_type: "guide"
last_updated: "2026-10-07"
---


[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)

# Store Structured Clarion Data in One Field

A strong ProTOML use case is storing several related structures in one field that already belongs to a record.

For example, one document can contain application settings, a current customer snapshot, and a variable-length contact QUEUE.

## Build the document

```clarion
Toml.StartDocument()
Toml.WriteGroup('settings',AppSettings)
Toml.WriteRecord('customer',CustomerFile:Record)
Toml.WriteQueue('contacts',ContactQueue)
```

## Store it in a MEMO

```clarion
IF Toml.SaveMemo(SettingsFile,STO:TomlMemoIndex) = ProTOML:OK
  PUT(SettingsFile)
END
```

## Or store it in a BLOB

```clarion
IF Toml.SaveBlob(SettingsFile,STO:TomlBlobIndex) = ProTOML:OK
  PUT(SettingsFile)
END
```

## Restore it later

```clarion
STO:RecordId = 1
GET(SettingsFile,STO:StorageKey)

Toml.LoadMemo(SettingsFile,STO:TomlMemoIndex)
Toml.ReadGroup('settings',AppSettings)
Toml.ReadRecord('customer',CustomerFile:Record)
Toml.ReadQueue('contacts',ContactQueue)
```

This gives you a simple way to keep related settings, record data, and repeating QUEUE data together in one field.

The BLOB method stores the exact TOML document bytes. That storage encoding does not add application-wide Unicode support to ordinary Clarion controls, strings, or database drivers.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)
