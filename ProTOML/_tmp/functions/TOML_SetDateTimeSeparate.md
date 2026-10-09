
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# TOML_SetDateTimeSeparate

Sets a datetime value using separate Clarion date (LONG) and time (LONG) values.

## Preferred Clarion class method

Applications using the ProTOML template normally call [SetDateTimeText](../classes/SetDateTimeText.md).

```clarion
SetDateTimeText PROCEDURE(STRING pKeyPath,STRING pDateTimeText),LONG
```

## Low-level export contract

| Item | Value |
| --- | --- |
| Export | TOML_SetDateTimeSeparate |
| Return type | LONG |
| Calling convention | PASCAL, RAW, DLL(1) |
| Binary name | NAME('TOML_SetDateTimeSeparate') |

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| handle | LONG | Positive document handle returned by a document-creation or load export. |
| pKeyPath | *CSTRING | TOML dotted or indexed key path. |
| clarionDate | LONG | Clarion DATE value. |
| clarionTime | LONG | Clarion TIME value. |
| enableDebug | LONG | Nonzero enables debug behavior for this call. |

## Return value / error handling

On failure, read TOML_GetLastErrorCode and TOML_GetLastErrorText immediately. The preferred class method converts that pattern into a class result plus retained LastErrorCode and LastErrorText.

## Example (Clarion)

```clarion
RetCode LONG

CODE
Toml.StartDocument()
RetCode = Toml.SetDateTimeText('job.run_at','2026-07-29T08:15:10')
```

## Notes

- This function is available for advanced or specialized integrations.
- Applications using the global template should call SetDateTimeText.
- The complete low-level MAP is supplied in Clarion-Classes/ProTOMLRaw.clw.

## Related class method

- [SetDateTimeText](../classes/SetDateTimeText.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)