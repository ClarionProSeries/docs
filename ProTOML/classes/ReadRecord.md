---
title: "ProTOMLClass.ReadRecord"
summary: "Reads a TOML table into the current Clarion FILE record buffer."
description: "Reads a TOML table into the current Clarion FILE record buffer."
keywords: ["ProTOML", "Clarion", "ReadRecord", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "ReadRecord"
category: "Clarion structure mapping"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# ReadRecord

Reads a TOML table into the current Clarion FILE record buffer.

## Clarion class declaration

```clarion
ReadRecord PROCEDURE(STRING pTablePath,*GROUP pRecord),LONG
```

## Purpose

Reads a TOML table into the current Clarion FILE record buffer.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pTablePath | STRING | TOML table path used for the mapped GROUP or RECORD. |
| pRecord | *GROUP | Named FILE RECORD buffer passed as a GROUP. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
RetCode = Toml.ReadRecord('customer',CUS:Record)
```


## Notes

- BINDABLE is not required on the FILE. ProTOML maps the named current RECORD buffer through its ordinary field labels.
- Optional NAME attributes let you choose stable TOML keys that do not depend on Clarion prefixes or labels.

## Related methods

- [WriteRecord](WriteRecord.md)
- [ReadGroup](ReadGroup.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
