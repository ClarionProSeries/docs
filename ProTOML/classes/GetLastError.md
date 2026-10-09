---
title: "ProTOMLClass.GetLastError"
summary: "Copies the current readable class error text and returns the current error code."
description: "Copies the current readable class error text and returns the current error code."
keywords: ["ProTOML", "Clarion", "GetLastError", "class method"]
page_type: "reference"
last_updated: "2026-10-07"
method_name: "GetLastError"
category: "Error handling"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetLastError

Copies the current readable class error text and returns the current error code.

## Clarion class declaration

```clarion
GetLastError PROCEDURE(*CSTRING pErrorText),LONG
```

## Purpose

Copies the current readable class error text and returns the current error code.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pErrorText | *CSTRING | Receives the current readable class error text. |

## Return value

Returns the current class error code and copies the readable text into pErrorText.

## Example (Clarion)

```clarion
ErrorText CSTRING(2048)
ErrorCode LONG

CODE
ErrorCode = Toml.GetLastError(ErrorText)
IF ErrorCode < 0
  MESSAGE(ErrorText,'ProTOML Error')
END
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [ClearLastError](ClearLastError.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
