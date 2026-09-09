---
title: "vuMailSlotDestroy"
summary: "Destroys a previously created mailslot and releases its Windows handle."
description: "Destroys a previously created mailslot and releases its Windows handle."
keywords: ["vuFileTools", "mailslot", "IPC", "Clarion", "Windows"]
function_name: "vuMailSlotDestroy"
category: "Interprocess Communication"
version_added: "5.0"
last_updated: "2026-09-08"
---

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMailSlotDestroy(SlotName)

```Prototype
vuMailSlotDestroy(*CSTRING), Signed
```


## Description
Destroys a previously created mailslot and releases its Windows handle.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| SlotName | CSTRING | The logical name of the mailslot to destroy. |

### Returns
- 1 (True) if the slot was destroyed successfully.  
- 0 (False) if the slot is not registered or Windows could not close the handle.  

### Example

```Clarion
SlotName = 'Transactions'
IF vuMailSlotDestroy(SlotName)
  MESSAGE('Mail slot destroyed successfully.')
ELSE
  MESSAGE('Failed to destroy mail slot.')
END
```

### Notes
- Build 208 corrects the internal array resizing performed after a slot is removed.  
- If Windows cannot close the mailslot handle, vuMailSlotLastError contains the native Windows error.  
- Destroy a mailslot when the receiving application no longer needs it.  

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)
