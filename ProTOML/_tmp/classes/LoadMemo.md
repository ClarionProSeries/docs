
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# LoadMemo

Loads a complete TOML document from a selected Clarion MEMO field.

## Clarion class declaration

```clarion
LoadMemo PROCEDURE(*FILE pFile,LONG pFieldNumber),LONG
```

## Purpose

Loads a complete TOML document from a selected Clarion MEMO field.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pFile | *FILE | Clarion FILE that owns the selected MEMO field. |
| pFieldNumber | LONG | Negative FILE property index for the target MEMO field. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
DMO:RecordId = 1
GET(DemoFile,DMO:StorageKey)
RetCode = Toml.LoadMemo(DemoFile,DMO:TomlMemoIndex)
```

## Notes

- The MEMO is a FILE-level field declared before the RECORD. Pass its negative property index.
- SaveMemo fails before assignment when the serialized document exceeds the declared MEMO capacity; it never silently clips.

## Related methods

- [SaveMemo](SaveMemo.md)
- [LoadBlob](LoadBlob.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)