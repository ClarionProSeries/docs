---
title: "vuMailErrorDisplay"
summary: "Enables or disables automatic error message display."
description: "Enables or disables automatic error message display. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vumailerrordisplay"]
function_name: "vuMailErrorDisplay"
category: "Globals and Configuration"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailErrorDisplay(Enable)

```Prototype
vuMailErrorDisplay(LONG), LONG
```

## Purpose
Controls whether vuMailKit automatically displays an error message when a send operation fails.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Enable | LONG | `1` enables automatic error display. `0` disables it. |

## Return value
- `1` = flag set successfully.

## Notes
- Disable this if your application wants complete control over error presentation and will use the standard status and last-error functions instead.
- Like `vuMailSuccessDisplay()`, this is a runtime UI preference rather than a transport setting.

## Clarion example
```clarion
RC      LONG

RC = vuMailErrorDisplay(0)
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
