---
title: "vuMailSlotSend"
summary: "Sends data to a named mailslot in another application."
description: "Sends data to a named mailslot in another application."
keywords: ["vuFileTools", "mailslot", "IPC", "Clarion", "Windows"]
function_name: "vuMailSlotSend"
category: "Interprocess Communication"
version_added: "5.0"
last_updated: "2026-09-08"
---

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMailSlotSend(SlotName, Data, Length, Local)

```Prototype
vuMailSlotSend(*CSTRING,*CSTRING,LONG,LONG), Signed
```


## Description
Sends data to a named mailslot in another application.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| SlotName | CSTRING | The logical name of the target mailslot. |
| Data | CSTRING | The data to send. A Clarion group or queue can also be copied into a compatible buffer before sending. |
| Length | LONG | The number of bytes to write. |
| Local | LONG | 1 sends to a mailslot on the same PC. 0 uses the legacy remote/domain mailslot form. |

### Returns
- 1 (True) if the message was written successfully.  
- 0 (False) if the target slot could not be opened or the write failed.  

### Example

```Clarion
SlotName = 'Transactions'
Data     = 'Any Data I Want'
Length   = LEN(Data)
Local    = 1

IF vuMailSlotSend(SlotName, Data, Length, Local)
  MESSAGE('Data sent successfully.')
ELSE
  MESSAGE('Failed to send data.')
END
```

### Notes
- Use Local = 1 for normal same-PC vuFileTools communication.  
- Microsoft deprecated the Remote Mailslot protocol in November 2023, and Windows 11 version 24H2 disables remote mailslots by default. Local = 0 is retained for legacy compatibility and is not recommended for new cross-machine designs.  
- If the send fails, vuMailSlotLastError contains the native Windows error.  

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)
