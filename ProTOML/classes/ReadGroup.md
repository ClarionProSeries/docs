---
title: "ProTOMLClass.ReadGroup"
summary: "Reads a TOML table into a flat Clarion GROUP while preserving existing values for missing keys."
description: "Reads a TOML table into a flat Clarion GROUP while preserving existing values for missing keys."
keywords: ["ProTOML", "Clarion", "ReadGroup", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "ReadGroup"
category: "Clarion structure mapping"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# ReadGroup

Reads a TOML table into a flat Clarion GROUP while preserving existing values for missing keys.

## Clarion class declaration

```clarion
ReadGroup PROCEDURE(STRING pTablePath,*GROUP pGroup),LONG
```

## Purpose

Reads a TOML table into a flat Clarion GROUP while preserving existing values for missing keys.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pTablePath | STRING | TOML table path used for the mapped GROUP or RECORD. |
| pGroup | *GROUP | Ordinary Clarion GROUP instance to populate. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
AppSettings GROUP
AppName       STRING(80),NAME('application_name')
Refresh       LONG,NAME('refresh_minutes')
            END
RetCode     LONG

CODE
RetCode = Toml.ReadGroup('application',AppSettings)
```

## Notes

- BINDABLE is not required. Ordinary Clarion field labels are used as keys.
- Optional NAME attributes let you choose stable TOML keys that do not depend on Clarion prefixes or labels.

## Related methods

- [WriteGroup](WriteGroup.md)
- [ReadQueue](ReadQueue.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
