
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

**Build 210 compatibility change:** Previously named `vuPasswordCleanup` in vuFileTools. The old name is not exported by Build 210 or later. This function has a new vuFT-prefixed name to avoid a declaration conflict with vuMailKit. Existing Secure Login windows and manual calls must be updated and rebuilt. See [Secure Login migration instructions](../secure-login.md).

# vuFTPasswordCleanup(ControlHandle)

```Prototype
vuFTPasswordCleanup(LONG), SIGNED, PASCAL, RAW, NAME('vuFTPasswordCleanup')
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
| ControlHandle | LONG | Handle of the target control previously initialized with vuFTPasswordInit(). |

## Returns

- 1 = Cleanup successful
- 0 = Control was not initialized or cleanup was not needed

## Example

```Clarion
RC LONG

RC = vuFTPasswordCleanup(?MyPassword{PROP:Handle})
```

## Notes

- This function is optional, but recommended when you want explicit cleanup during window shutdown.
- A good place to call it is during your window teardown logic, such as Window.Kill.
- After cleanup, the control is no longer managed by the password helper until vuFTPasswordInit() is called again.

## Related functions

- [vuFTPasswordInit](vuFTPasswordInit.md)
- [vuFTPasswordToggle](vuFTPasswordToggle.md)

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)