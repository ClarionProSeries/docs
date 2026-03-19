---
title: "vuPasswordCleanup"
summary: "Manually detaches the password management logic and removes the toggle button from an entry control."
description: "Releases internal resources, removes the eye button, and restores the original window procedure for a managed control. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "password", "cleanup", "unsubclass", "Clarion", "vuPasswordCleanup"]
function_name: "vuPasswordCleanup"
category: "UI Helpers"
version_added: "5.1"
last_updated: "2026-03-17"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPasswordCleanup(ControlHandle)

```Prototype
vuPasswordCleanup(LONG), SIGNED, PASCAL, RAW, NAME('vuPasswordCleanup')
```

## Description

Manually detaches the password management logic from a Clarion entry control.

This function performs the following actions:

- Destroys the automatic eye button for the managed control.
- Restores the control's original Windows procedure.
- Frees the internal memory allocated for that control's state.

While the DLL also attempts to clean up when the control is destroyed, calling this function during normal window teardown is recommended when you want deterministic cleanup.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| ControlHandle | LONG | Handle of the target control previously initialized with `vuPasswordInit()`. |

## Returns

- `1` = Cleanup successful
- `0` = Control was not initialized or cleanup was not needed

## Example

```Clarion
RC LONG

RC = vuPasswordCleanup(?MyPassword{PROP:Handle})
```

## Notes

- This function is optional, but recommended when you want explicit cleanup during window shutdown.
- A good place to call it is during your window teardown logic, such as `Window.Kill`.
- After cleanup, the control is no longer managed by the password helper until `vuPasswordInit()` is called again.

## Related functions

- [vuPasswordInit](vuPasswordInit.md)
- [vuPasswordToggle](vuPasswordToggle.md)

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)