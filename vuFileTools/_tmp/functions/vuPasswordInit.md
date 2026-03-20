
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPasswordInit(ControlHandle, InitialMode, CueText, TooltipText)

```Prototype
vuPasswordInit(LONG, LONG, *CSTRING, *CSTRING), SIGNED, PASCAL, RAW, NAME('vuPasswordInit')
```

## Description

Registers a Clarion entry control for managed visibility behavior. This function automatically creates and manages a toggle button (eye icon) to the right of the control. It supports both masked password fields and unmasked fields such as login names.

The function prepares internal tracking for the control, sets the starting visibility mode, handles cue text, and optionally adds a tooltip to the generated button.

**Stability Note:** This function is idempotent. If called on a control that is already initialized, it will automatically perform a cleanup of the previous instance before re-applying the new settings. This prevents repeated subclassing and keeps the control stable during dynamic UI refreshes.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| ControlHandle | LONG | Handle of the target control, typically passed as `?Control{PROP:Handle}`. |
| InitialMode | LONG | Starting mode. Pass `0` to begin masked or `1` to begin in visible-text mode. |
| CueText | *CSTRING | Cue text to display when the field is empty. Pass a blank `CSTRING` if no cue text is wanted. |
| TooltipText | *CSTRING | Tooltip text for the generated button. Pass a blank `CSTRING` if no tooltip is wanted. |

## Returns

- `0` = Success
- `-1` = Internal memory allocation failure

## Supported Clarion calling pattern

Use a fixed 4-parameter call from Clarion.

Even when you do not want cue text or tooltip text, you should still pass both referenced `CSTRING` parameters and initialize them to blank values.

This is the recommended calling pattern:

```Clarion
vuPasswordInit(LONG, LONG, *CSTRING, *CSTRING), SIGNED, PASCAL, RAW, NAME('vuPasswordInit')
```

## Example with cue text and tooltip

```Clarion
LoginNameCue        CSTRING(80)
LoginNameTip        CSTRING(80)
LoginNameShowState  LONG
RC                  LONG

LoginNameCue       = 'Enter your login name'
LoginNameTip       = 'Show / Hide Login Name'
LoginNameShowState = 0

RC = vuPasswordInit(?LoginName{PROP:Handle}, LoginNameShowState, LoginNameCue, LoginNameTip)
```

## Example with no cue text and no tooltip

```Clarion
LoginPasswordCue        CSTRING(80)
LoginPasswordTip        CSTRING(80)
LoginPasswordShowState  LONG
RC                      LONG

LoginPasswordCue       = ''
LoginPasswordTip       = ''
LoginPasswordShowState = 0

RC = vuPasswordInit(?LoginPassword{PROP:Handle}, LoginPasswordShowState, LoginPasswordCue, LoginPasswordTip)
```

## Notes

- The function creates its own eye button and manages it internally.
- Cue text is optional. If `CueText` is blank, no cue text is drawn.
- Tooltip text is optional. If `TooltipText` is blank, no tooltip is shown.
- The button is resized and repositioned as the control moves or changes size.
- The control supports normal keyboard and paste behavior while still using the original Clarion entry control.

## Related functions

- [vuPasswordToggle](vuPasswordToggle.md)
- [vuPasswordCleanup](vuPasswordCleanup.md)

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)