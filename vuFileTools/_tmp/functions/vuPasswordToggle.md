
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPasswordToggle(ControlHandle)

```Prototype
vuPasswordToggle(LONG), SIGNED, PASCAL, RAW, NAME('vuPasswordToggle')
```

## Description

Toggles a managed control between visible-text mode and normal masked mode.

While the DLL provides an automatic eye button for user interaction, this function remains available for developer-driven events, such as a "Reveal All" button on a form or forcing a mask on a specific event.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| ControlHandle | LONG | Handle of the target control previously initialized with `vuPasswordInit()`. |

## Returns

- `1` = Text is now visible
- `0` = Mask mode is now active
- `-5` = Control not initialized

## Example

```Clarion
ShowState LONG

ShowState = vuPasswordToggle(?InPassword{PROP:Handle})
```

## Notes

- `vuPasswordToggle()` only works on controls that have already been initialized with `vuPasswordInit()`.
- The return value tells you the new state after the toggle completes.
- In normal UI use, most developers will let the generated eye button handle toggling automatically.

## Related functions

- [vuPasswordInit](vuPasswordInit.md)
- [vuPasswordCleanup](vuPasswordCleanup.md)

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)