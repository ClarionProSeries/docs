---
title: "vuMailSlotSend"
summary: "Sends data to a mail slot in another application, either locally or across the domain."
description: "Sends data to a mail slot in another application, either locally or across the domain. ### Parameters ### Returns
A LONG value:  
- 1 (True) if successful  
- 0 (False) on failure   ### Example ### Notes
- Mail slots allow sending messages between applications, locally or across a domain.  
- Data can be structured as strings, groups, or queues.  
- The demo application demonstrates sending data from one application to another.  
- For more information, see the separate mail slots write-up included with the distribution package. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "locally", "either", "data", "across", "another", "general", "mail", "domain", "vumailslotsend", "Clarion", "slot"]
function_name: "vuMailSlotSend"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMailSlotSend(SlotName, Data, Length, Local)

```Prototype
vuMailSlotSend(*CSTRING,*CSTRING,LONG,LONG), Signed
```


## Description
Sends data to a mail slot in another application, either locally or across the domain.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| SlotName  | CSTRING(256) | The name of the mail slot to send the data to. Can target multiple applications. |
| Data      | CSTRING(512) | The data to send (may be a STRING, GROUP, or QUEUE).                        |
| Length    | LONG         | The length of the data being sent.                                          |
| Local     | LONG         | Flag indicating delivery scope: 1 = local machine only, 0 = domain-wide.    |

### Returns
A LONG value:  
- 1 (True) if successful  
- 0 (False) on failure  

### Example

```Clarion
SlotName = 'Transactions'
Data     = 'Any Data I Want'
Length   = 15
Local    = 1

IF vuMailSlotSend(SlotName, Data, Length, Local)
  MESSAGE('Data sent successfully.')
ELSE
  MESSAGE('Failed to send data.')
END
```

### Notes
- Mail slots allow sending messages between applications, locally or across a domain.  
- Data can be structured as strings, groups, or queues.  
- The demo application demonstrates sending data from one application to another.  
- For more information, see the separate mail slots write-up included with the distribution package.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
