---
title: "ProTOMLClass.GetLong"
summary: "Reads a TOML integer into a Clarion LONG with range checking and a supplied default."
description: "Reads a TOML integer into a Clarion LONG with range checking and a supplied default."
keywords: ["ProTOML", "Clarion", "GetLong", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "GetLong"
category: "Scalar values"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetLong

Reads a TOML integer into a Clarion LONG with range checking and a supplied default.

## Clarion class declaration

```clarion
GetLong PROCEDURE(STRING pKeyPath,LONG pDefault,*LONG pValue),LONG
```

## Purpose

Reads a TOML integer into a Clarion LONG with range checking and a supplied default.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pDefault | LONG | Value returned when the TOML key or array element is absent. |
| pValue | *LONG | Output variable that receives the requested value. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RefreshMinutes LONG
RetCode        LONG

CODE
RetCode = Toml.GetLong('application.refresh_minutes',5,RefreshMinutes)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [SetLong](SetLong.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
