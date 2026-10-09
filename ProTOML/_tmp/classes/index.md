

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# ProTOML High-Level Methods

The ProTOML global template supplies the Toml object used by these methods. These high-level methods are the normal interface for Clarion applications.

## Documents and storage

| Method | Purpose |
| --- | --- |
| [StartDocument](StartDocument.md) | Start a new empty document. |
| [LoadText](LoadText.md) / [SaveText](SaveText.md) | Load or save the complete document as text. |
| [LoadFile](LoadFile.md) / [SaveFile](SaveFile.md) | Load or save a .toml file. |
| [LoadMemo](LoadMemo.md) / [SaveMemo](SaveMemo.md) | Load or save a complete document in a MEMO. |
| [LoadBlob](LoadBlob.md) / [SaveBlob](SaveBlob.md) | Load or save a complete document in a BLOB. |
| [Close](Close.md) | Close the current document. |

## Individual values

| Method | Purpose |
| --- | --- |
| [SetString](SetString.md) / [GetString](GetString.md) | String values. |
| [SetLong](SetLong.md) / [GetLong](GetLong.md) | LONG values. |
| [SetBool](SetBool.md) / [GetBool](GetBool.md) | Boolean values. |
| [SetSReal](SetSReal.md) / [GetSReal](GetSReal.md) | SREAL values. |
| [SetReal](SetReal.md) / [GetReal](GetReal.md) | REAL values. |
| [SetDateTimeText](SetDateTimeText.md) / [GetDateTimeText](GetDateTimeText.md) | TOML date/time text. |
| [KeyExists](KeyExists.md) | Test whether a key exists. |

## Clarion structures

| Method | Purpose |
| --- | --- |
| [WriteGroup](WriteGroup.md) / [ReadGroup](ReadGroup.md) | Store and restore a GROUP. |
| [WriteRecord](WriteRecord.md) / [ReadRecord](ReadRecord.md) | Store and restore the current FILE record buffer. |
| [WriteQueue](WriteQueue.md) / [ReadQueue](ReadQueue.md) | Store and restore a QUEUE. |

## Arrays and diagnostics

| Method | Purpose |
| --- | --- |
| [AppendString](AppendString.md) | Append a string to an array. |
| [AppendTable](AppendTable.md) | Append an array-of-tables row. |
| [ClearArray](ClearArray.md) | Clear an array. |
| [GetArrayCount](GetArrayCount.md) | Read an array count. |
| [GetArrayString](GetArrayString.md) / [GetArrayLong](GetArrayLong.md) | Read array values. |
| [GetLastError](GetLastError.md) | Read a useful error message. |
| [SetDebug](SetDebug.md) | Enable or disable debug output. |

The [Low-Level API Reference](../functions/index.md) is available for specialized integrations, but most applications do not need it.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)