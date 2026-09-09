
[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMailSlotLastErrorText(Buffer, BufferSize)

```Prototype
vuMailSlotLastErrorText(*CSTRING,LONG), Signed
```


## Description
Writes readable Windows text for the most recently stored mailslot error into a caller-provided CSTRING.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| Buffer | CSTRING | Destination CSTRING for the Windows error text. |
| BufferSize | LONG | Total size of Buffer. In Clarion, normally pass SIZE(Buffer). |

### Returns
- 1 (True) if Windows error text was written successfully.  
- 0 (False) if there is no stored error, BufferSize is invalid, or Windows could not format the error text.  

### Example

```Clarion
ErrNo = vuMailSlotLastError()
IF ErrNo
  IF vuMailSlotLastErrorText(ErrText, SIZE(ErrText))
    MESSAGE('Windows error ' & ErrNo & ': ' & ErrText)
  END
END
```

### Notes
- Added in Build 208.  
- A CSTRING(512) is a practical size for normal diagnostic use.  
- The stored error is maintained by the vuFileTools mailslot functions in the current process.  

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)