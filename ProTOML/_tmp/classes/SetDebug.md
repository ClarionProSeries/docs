
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SetDebug

Turns ProTOML debug behavior on or off for later DLL calls.

## Clarion class declaration

```clarion
SetDebug PROCEDURE(BYTE pEnabled)
```

## Purpose

Turns ProTOML debug behavior on or off for later DLL calls.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pEnabled | BYTE | Pass a nonzero value to enable debug behavior; pass zero to disable it. |

## Return value

No return value.

## Example (Clarion)

```clarion

CODE
Toml.SetDebug(1)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [GetLastError](GetLastError.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)