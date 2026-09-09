---
title: "vuMailSlotLastError"
summary: "Returns the native Windows error code captured by the most recent mailslot operation in the current process."
description: "Returns the native Windows error code captured by the most recent mailslot operation in the current process."
keywords: ["vuFileTools", "mailslot", "IPC", "Clarion", "Windows"]
function_name: "vuMailSlotLastError"
category: "Interprocess Communication"
version_added: "5.0 Build 208"
last_updated: "2026-09-08"
---

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMailSlotLastError()

```Prototype
vuMailSlotLastError(), LONG
```


## Description
Returns the native Windows error code captured by the most recent mailslot operation in the current process.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None |  | This function takes no parameters. |

### Returns
- Returns the stored Windows error code.  
- Returns 0 when no mailslot error is currently stored.  

### Example

```Clarion
Result = vuMailSlotSend(SlotName, Data, LEN(Data), 1)
IF Result = 0
  ErrNo = vuMailSlotLastError()
  MESSAGE('Windows error: ' & ErrNo)
END
```

### Notes
- Added in Build 208.  
- Call this immediately after a failed mailslot operation if you need the native Windows error.  
- Use vuMailSlotLastErrorText to convert the error code into readable Windows text.  

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)
