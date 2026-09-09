---
title: "vuMailSlotDestroyAll"
summary: "Destroys all mailslots currently registered by vuFileTools in the calling process."
description: "Destroys all mailslots currently registered by vuFileTools in the calling process."
keywords: ["vuFileTools", "mailslot", "IPC", "Clarion", "Windows"]
function_name: "vuMailSlotDestroyAll"
category: "Interprocess Communication"
version_added: "5.0"
last_updated: "2026-09-08"
---

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMailSlotDestroyAll()

```Prototype
vuMailSlotDestroyAll(), Signed
```


## Description
Destroys all mailslots currently registered by vuFileTools in the calling process.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None |  | This function takes no parameters. |

### Returns
- 1 (True) if there are no active slots or every active slot is destroyed successfully.  
- 0 (False) if one or more handles could not be closed. Any failed slots remain tracked so they are not silently lost.  

### Example

```Clarion
IF vuMailSlotDestroyAll()
  MESSAGE('All mail slots destroyed successfully.')
ELSE
  MESSAGE('One or more mail slots could not be destroyed.')
END
```

### Notes
- Build 208 strengthens cleanup bookkeeping when one or more CloseHandle operations fail.  
- vuMailSlotLastError retains the first Windows close error encountered during the operation.  

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)
