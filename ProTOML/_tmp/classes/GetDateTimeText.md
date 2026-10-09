
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# GetDateTimeText

Returns the TOML date/time literal text while preserving its TOML category and offset form.

## Clarion class declaration

```clarion
GetDateTimeText PROCEDURE(STRING pKeyPath,*CSTRING pDateTimeText),LONG
```

## Purpose

Returns the TOML date/time literal text while preserving its TOML category and offset form.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pKeyPath | STRING | Dotted or indexed TOML key path. |
| pDateTimeText | *CSTRING | TOML date/time literal text or output CSTRING that receives it. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
DateTimeText CSTRING(64)
RetCode      LONG

CODE
RetCode = Toml.GetDateTimeText('job.run_at',DateTimeText)
```

## Notes

- The class captures DLL diagnostics immediately and retains them in LastErrorCode and LastErrorText.

## Related methods

- [SetDateTimeText](SetDateTimeText.md)
- [ReadGroup](ReadGroup.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)