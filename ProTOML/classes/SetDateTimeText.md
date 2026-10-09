---
title: "ProTOMLClass.SetDateTimeText"
summary: "Stores TOML local or offset date/time text without inventing a UTC marker."
description: "Stores TOML local or offset date/time text without inventing a UTC marker."
keywords: ["ProTOML", "Clarion", "SetDateTimeText", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "SetDateTimeText"
category: "Date and time"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SetDateTimeText

Stores TOML local or offset date/time text without inventing a UTC marker.

## Clarion class declaration

```clarion
SetDateTimeText PROCEDURE(STRING pKeyPath,STRING pDateTimeText),LONG
```

## Purpose

Stores TOML local or offset date/time text without inventing a UTC marker.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pDateTimeText | STRING | TOML date/time literal text or output CSTRING that receives it. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetDateTimeText('job.run_at','2026-07-29T08:15:10')
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetDateTimeText](GetDateTimeText.md)
- [WriteGroup](WriteGroup.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
