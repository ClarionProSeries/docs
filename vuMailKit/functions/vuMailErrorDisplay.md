---
title: "vuMailErrorDisplay"
summary: "Enables or disables automatic verbose error message display."
description: "Enables or disables automatic verbose error message display. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vumailerrordisplay"]
function_name: "vuMailErrorDisplay"
category: "Globals and Configuration"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailErrorDisplay(Enable)

```Prototype
vuMailErrorDisplay(LONG InValue),SIGNED,PROC,PASCAL,RAW,NAME('vuMailErrorDisplay')
```

## Description
Sets the runtime flag that controls whether vuMailKit automatically displays a verbose error message when a send operation fails.

### Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InValue | LONG | 1 enables automatic error display. 0 disables it. |

## Return value
Returns 1 on success.

## Notes
- If you prefer to handle errors in your own UI, disable this and use the standard status functions to retrieve error details.

### Example

````clarion
ROUTINE:Test_vuMailErrorDisplay   ROUTINE
  DATA
RC      LONG
Flag    LONG

  CODE
  Flag = 1
  RC = vuMailErrorDisplay(Flag)
  STOP('RC=' & RC & '|Flag=' & Flag)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)