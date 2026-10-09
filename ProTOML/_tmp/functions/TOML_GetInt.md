
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_GetInt

Returns an integer value (LONG) from a loaded TOML document.

## Preferred Clarion class method

Applications using the ProTOML template normally call [GetLong](../classes/GetLong.md).

```clarion
GetLong PROCEDURE(STRING pKeyPath,LONG pDefault,*LONG pValue),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_GetInt |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_GetInt') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| defaultVal | LONG | Default scalar returned when the key or element is absent. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RefreshMinutes LONG
RetCode        LONG

CODE
RetCode = Toml.GetLong('application.refresh_minutes',5,RefreshMinutes)
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call GetLong.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [GetLong](../classes/GetLong.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)