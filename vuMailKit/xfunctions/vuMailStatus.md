---
title: "vuMailStatus"
summary: "Returns send queue and background send status."
description: "Returns send queue and background send status. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vumailstatus"]
function_name: "vuMailStatus"
category: "Status and Queue"
version_added: "Legacy"
last_updated: "2026-01-07"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailStatus()

## Description
Returns send queue and background send status.

### Returns

A LONG value indicating current send status.

- -1: Mail is being sent via vuSendMailFromFile()
- 0: No mail is currently being sent and the queue is empty
- 1: An email is currently being sent
- 1 + N: An email is being sent and N additional emails are waiting in the queue

### Notes

This function is used to poll status during asynchronous sending.

NOTE: A good place to call this function is: Window Events, Close Window, Before <'Generated Code'>. 
### Example (Clarion)

````clarion
  IF vuMailStatus()
    IF MESSAGE('Email is still being sent.|' & |
               'Exiting now may cause this email to be lost.|' & |
               'Continue (Y/N)?', |
               'Email Message', |
               ICON:Exclamation, |
               BUTTON:Yes + BUTTON:No) = BUTTON:No
      CYCLE
    END
  END
````

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
