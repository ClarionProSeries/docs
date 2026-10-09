
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# SaveMemo

Saves the complete document into a selected Clarion MEMO field without clipping the document.

## Clarion class declaration

```clarion
SaveMemo PROCEDURE(*FILE pFile,LONG pFieldNumber),LONG
```

## Purpose

Saves the complete document into a selected Clarion MEMO field without clipping the document.

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
! DMO:TomlMemoIndex is the negative property index for the MEMO.
RetCode = Toml.SaveMemo(DemoFile,DMO:TomlMemoIndex)
IF RetCode = ProTOML:OK
  PUT(DemoFile)
END
```

## Notes

- The MEMO is a FILE-level field declared before the RECORD. Pass its negative property index.
- SaveMemo fails before assignment when the serialized document exceeds the declared MEMO capacity; it never silently clips.

## Related methods

- [LoadMemo](LoadMemo.md)
- [SaveBlob](SaveBlob.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)