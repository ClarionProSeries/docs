
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

**Build 210 compatibility change:** Previously named `vuPasswordToggle` in vuFileTools. The old name is not exported by Build 210 or later. This function has a new vuFT-prefixed name to avoid a declaration conflict with vuMailKit. Existing Secure Login windows and manual calls must be updated and rebuilt. See [Secure Login migration instructions](../secure-login.md).

# vuFTPasswordToggle(ControlHandle)

```Prototype
vuFTPasswordToggle(LONG), SIGNED, PASCAL, RAW, NAME('vuFTPasswordToggle')
```

## Description

Toggles a managed control between visible-text mode and normal masked mode.

While the DLL provides an automatic eye button for user interaction, this function remains available for developer-driven events, such as a "Reveal All" button on a form or forcing a mask on a specific event.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| ControlHandle | LONG | Handle of the target control previously initialized with vuFTPasswordInit(). |

## Returns

- 1 = Text is now visible
- 0 = Mask mode is now active
- -5 = Control not initialized

## Example

```Clarion
ShowState LONG

ShowState = vuFTPasswordToggle(?InPassword{PROP:Handle})
```

## Notes

- vuFTPasswordToggle() only works on controls that have already been initialized with vuFTPasswordInit().
- The return value tells you the new state after the toggle completes.
- In normal UI use, most developers will let the generated eye button handle toggling automatically.

## Related functions

- [vuFTPasswordInit](vuFTPasswordInit.md)
- [vuFTPasswordCleanup](vuFTPasswordCleanup.md)

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)