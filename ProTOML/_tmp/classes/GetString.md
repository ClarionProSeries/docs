
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetString

Reads a string from a TOML key path, using a supplied default when the key is absent.

## Clarion class declaration

```clarion
GetString PROCEDURE(STRING pKeyPath,STRING pDefault,*CSTRING pValue),LONG
```

## Purpose

Reads a string from a TOML key path, using a supplied default when the key is absent.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pDefault | STRING | Value returned when the TOML key or array element is absent. |
| pValue | *CSTRING | Output variable that receives the requested value. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
AppName CSTRING(128)
RetCode LONG

CODE
RetCode = Toml.GetString('application.name','Untitled',AppName)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [SetString](SetString.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)