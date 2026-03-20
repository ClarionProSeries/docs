
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPasswordInit(ControlHandle, InitialMode, CueText, TooltipText)

```Prototype
vuPasswordInit(LONG, LONG, *CSTRING, *CSTRING), SIGNED, PASCAL, RAW, NAME('vuPasswordInit')
```

## Description

Retrofits a standard Clarion entry control into a more modern password UI without forcing you to replace the control or redesign your login screen. With a single function call, you can add the kind of behavior users now expect, including a show/hide eye button, optional cue text, and normal paste support.

This makes it easy to upgrade an existing Clarion password entry so it feels more like the password fields seen in current desktop and web applications, while still keeping the original Clarion control and its normal behavior underneath.

Technically, the function registers a Clarion entry control for managed visibility behavior. It automatically creates and manages a toggle button (eye icon) to the right of the control. It supports both masked password fields and unmasked fields such as login names.

The function prepares internal tracking for the control, sets the starting visibility mode, handles cue text, and optionally adds a tooltip to the generated button.

The developer does not have to create the eye button, position it, or supply icon files. The required eye icons are compiled into the DLL as resources, and the button is created automatically in the correct relative position next to the control.

This function preserves the original native Clarion entry control. It does not replace the control with a substitute control type, so existing Clarion behavior and embed logic continue to work normally.

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
- The developer does not need to create the button, provide icon files, or manually position the button.
- The eye icons are compiled into the DLL as resources.
- The button is created automatically in the proper relative position next to the control.
- Cue text is optional. If `CueText` is blank, no cue text is drawn.
- Tooltip text is optional. If `TooltipText` is blank, no tooltip is shown.
- The button is resized and repositioned as the control moves or changes size.
- The control supports normal keyboard and paste behavior while still using the original Clarion entry control.
- Allowing paste is intentional so the control behaves more like modern password fields and better matches current user expectations.

## Related functions

- [vuPasswordToggle](vuPasswordToggle.md)
- [vuPasswordCleanup](vuPasswordCleanup.md)

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)