---
title: "vuPasswordToggle"
summary: "Toggles a managed password control between visible-text mode and normal masked mode."
description: "Programmatically switches a password control between visible-text mode and masked mode. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "password", "toggle", "show password", "hide password", "Clarion", "vuPasswordToggle"]
function_name: "vuPasswordToggle"
category: "UI Helpers"
version_added: "2026.03"
last_updated: "2026-03-17"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPasswordToggle(ControlHandle)

```Prototype
vuPasswordToggle(LONG),SIGNED,PASCAL,RAW,NAME('vuPasswordToggle')
```

## Description

Programmatically toggles a managed password control between visible-text mode and normal masked mode.

The eye button created during `vuPasswordInit()` handles this automatically for the user, but this function allows the developer to force a state change through code when needed.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| ControlHandle | LONG | Handle of the target password control previously initialized with `vuPasswordInit()`. |

## Returns

- `1` = Text is now visible
- `0` = Mask mode is now active
- `-5` = Control not initialized

## Example

```Clarion
RC LONG

RC = vuPasswordToggle(?InPassword{PROP:Handle})
```

## Notes

- `vuPasswordToggle()` only works on controls that have already been initialized with `vuPasswordInit()`.
- The returned value tells you the new state after the toggle completes.
- In normal UI use, most developers will let the generated eye button handle toggling automatically.

## Related functions

- [vuPasswordInit](vuPasswordInit.md)
- [vuPasswordCleanup](vuPasswordCleanup.md)

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)