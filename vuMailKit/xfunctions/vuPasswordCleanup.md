---
title: "vuPasswordCleanup"
summary: "Removes the managed password-control behavior and destroys the generated eye button."
description: "Performs deterministic cleanup for a managed password control by removing the eye button, restoring the original subclass chain, and releasing the helper state for that control. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "password", "cleanup", "Clarion", "vuPasswordCleanup", "unsubclass"]
function_name: "vuPasswordCleanup"
category: "UI Helpers"
version_added: "2026.03"
last_updated: "2026-03-17"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPasswordCleanup(ControlHandle)

```Prototype
vuPasswordCleanup(LONG),SIGNED,PASCAL,RAW,NAME('vuPasswordCleanup')
```

## Description

Manually detaches the managed password helper from a Clarion entry control.

This function performs deterministic cleanup for one control by:

- removing the generated eye button
- restoring the original subclass chain for that control when appropriate
- releasing the helper state associated with that control

While Windows often tears this down automatically when a window closes, this function gives the developer a predictable cleanup option during normal window shutdown.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| ControlHandle | LONG | Handle of the target control previously initialized with `vuPasswordInit()`. |

## Returns

- `1` = Cleanup successful
- `-5` = Control was not initialized

## Example

```Clarion
RC LONG

RC = vuPasswordCleanup(?MyPassword{PROP:Handle})
```

## Notes

- This function is optional, but recommended when you want deterministic cleanup during window teardown.
- A good place to call it is during your window shutdown logic.
- After cleanup, the control is no longer managed by the password helper until `vuPasswordInit()` is called again.

## Related functions

- [vuPasswordInit](vuPasswordInit.md)
- [vuPasswordToggle](vuPasswordToggle.md)

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)