
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# LoadBlob

Loads exact stored document bytes from a selected Clarion BLOB field.

## Clarion class declaration

```clarion
LoadBlob PROCEDURE(*FILE pFile,LONG pFieldNumber),LONG
```

## Purpose

Loads exact stored document bytes from a selected Clarion BLOB field.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pFile | *FILE | Clarion FILE that owns the selected BLOB field. |
| pFieldNumber | LONG | Negative FILE property index for the target BLOB field. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
RetCode LONG

CODE
DMO:RecordId = 1
GET(DemoFile,DMO:StorageKey)
RetCode = Toml.LoadBlob(DemoFile,DMO:TomlBlobIndex)
```

## Notes

- The BLOB is a FILE-level field declared before the RECORD. Pass its negative property index.
- The BLOB path stores exact UTF-8 document bytes. This is a storage encoding and does not add application-wide Unicode support to Clarion.

## Related methods

- [SaveBlob](SaveBlob.md)
- [LoadMemo](LoadMemo.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)