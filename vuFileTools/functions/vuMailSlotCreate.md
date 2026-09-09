---
title: "vuMailSlotCreate"
summary: "Creates a local mailslot in the current application so it can receive messages from another application."
description: "Creates a local mailslot in the current application so it can receive messages from another application."
keywords: ["vuFileTools", "mailslot", "IPC", "Clarion", "Windows"]
function_name: "vuMailSlotCreate"
category: "Interprocess Communication"
version_added: "5.0"
last_updated: "2026-09-08"
---

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMailSlotCreate(SlotName)

```Prototype
vuMailSlotCreate(*CSTRING), Signed
```


## Description
Creates a local mailslot in the current application so it can receive messages from another application.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| SlotName | CSTRING | The logical name of the mailslot to create. |

### Returns
- Returns the number of registered mailslots when the slot is created successfully.  
- Returns 0 if the slot cannot be created. Use vuMailSlotLastError and vuMailSlotLastErrorText for the Windows error when available.  

### Example

```Clarion
SlotName = 'Transactions'
Result = vuMailSlotCreate(SlotName)
IF Result > 0
  MESSAGE('Mail slot created successfully.')
ELSE
  MESSAGE('Failed to create mail slot.')
END
```

### Notes
- Build 208 corrects the first-slot bookkeeping problem that could allow Windows to create the slot successfully while vuFileTools recorded it in the reserved base position.  
- Create the receiving slot once and retain it until the application is finished with the channel.  
- For same-PC communication, the sending application should call vuMailSlotSend with Local set to 1.  

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)
