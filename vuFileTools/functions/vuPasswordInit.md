---
title: "vuPasswordInit"
summary: "Initializes a Clarion password entry control for managed cue text, eye-button toggle behavior, built-in paste support for password-masked ENTRY controls, and optional clipboard clearing after paste."
description: "Turns a standard Clarion password-masked ENTRY control into the kind of polished, modern password field users expect today. With one function call, vuFileTools adds in-field cue text, automatically creates a show/hide eye button, allows paste into password-masked ENTRY controls, and can even clear the clipboard after paste for added protection of sensitive data. It is an easy way to upgrade old login screens with a more attractive and more secure user experience without replacing the original Clarion control. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "password", "show password", "hide password", "Clarion", "entry control", "cue text", "tooltip", "paste", "clipboard", "security", "native control", "modern UI", "vuPasswordInit"]
function_name: "vuPasswordInit"
category: "UI Helpers"
version_added: "5.1"
last_updated: "2026-03-20"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPasswordInit(ControlHandle, InitialMode, CueText, TooltipText, ClearClipboardAfterPaste)

```Prototype
vuPasswordInit(LONG, LONG, *CSTRING, *CSTRING, LONG), SIGNED, PASCAL, RAW, NAME('vuPasswordInit')
```

## Description

Turns a standard Clarion `ENTRY` control with the `PASSWORD` attribute enabled into the kind of polished, modern password field users expect today, without forcing you to replace the control or redesign your window.

With one function call, you can upgrade an old-style password entry into a more attractive and more user-friendly field that supports in-field cue text, an automatically generated show/hide eye button, and the smooth behavior people are used to from current desktop and web applications.

It also gives you something many developers consider a major usability upgrade: built-in paste support for password-masked `ENTRY` controls. That means users can paste a password directly into the field instead of having to type it by hand, which makes the control feel much more in line with modern login screens and user expectations.

It also adds a valuable security option for sensitive data. When enabled, vuFileTools can automatically clear the clipboard after a successful paste into the managed control, helping prevent a copied password from being pasted again into Notepad or somewhere else afterward.

That means `vuPasswordInit()` is not just a visual upgrade. It is also a practical way to make password entry in your Clarion applications feel more modern, more professional, and more secure.

The control remains the original native Clarion `ENTRY` underneath, so normal Clarion behavior and embed points continue to work as usual. vuFileTools handles the eye button, visibility toggling, cue text support, built-in paste handling, optional clipboard protection, and synchronized enabled/disabled state for you.

The developer does not have to create the eye button, position it, or supply icon files. The required eye icons are compiled into the DLL as resources, and the button is created automatically in the correct relative position next to the control.

This function preserves the original native Clarion entry control. It does not replace the control with a substitute control type, so existing Clarion behavior and embed logic continue to work normally.

**Stability Note:** This function is idempotent. If called on a control that is already initialized, it will automatically perform a cleanup of the previous instance before re-applying the new settings. This prevents repeated subclassing and keeps the control stable during dynamic UI refreshes.

## Important Clarion setup

The underlying Clarion control should be a normal `ENTRY` control with the `PASSWORD` attribute enabled.

```Clarion
ENTRY(@s40),AT(...),USE(?MyPassword),PASSWORD
```

Call `vuPasswordInit()` after the window is open and the control handle is valid.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| ControlHandle | LONG | Handle of the target Clarion `ENTRY` control, passed as `?Control{PROP:Handle}`. |
| InitialMode | LONG | Starting mode. `0` for masked, `1` for visible text. |
| CueText | *CSTRING | Cue text to display when the field is empty. Pass a blank `CSTRING` if no cue text is wanted. |
| TooltipText | *CSTRING | Tooltip text for the generated eye button. Pass a blank `CSTRING` if no tooltip is wanted. |
| ClearClipboardAfterPaste | LONG | Controls whether the clipboard is cleared after a paste into the managed control. Pass `1` to clear the clipboard after paste. Pass `0` to leave the clipboard unchanged. |

## Returns

- `0` = Success
- `-1` = Internal memory allocation failure

## Supported Clarion calling pattern

Use a fixed 5-parameter call from Clarion.

Even when you do not want cue text or tooltip text, you should still pass both referenced `CSTRING` parameters and initialize them to blank values. You should also explicitly pass the clipboard behavior flag so the intended paste handling is clear in your source code.

This is the recommended calling pattern:

```Clarion
vuPasswordInit(LONG, LONG, *CSTRING, *CSTRING, LONG), SIGNED, PASCAL, RAW, NAME('vuPasswordInit')
```

## Example with cue text, tooltip, and clipboard clearing enabled

```Clarion
LoginNameCue                        CSTRING(80)
LoginNameTip                        CSTRING(80)
LoginNameShowState                  LONG
LoginNameClearClipboardAfterPaste   LONG
RC                                  LONG

LoginNameCue                        = 'Enter your login name'
LoginNameTip                        = 'Show / Hide Login Name'
LoginNameShowState                  = 0
LoginNameClearClipboardAfterPaste   = 1

RC = vuPasswordInit(?LoginName{PROP:Handle}, LoginNameShowState, LoginNameCue, LoginNameTip, LoginNameClearClipboardAfterPaste)
```

## Example with no cue text, no tooltip, and clipboard clearing disabled

```Clarion
LoginPasswordCue                        CSTRING(80)
LoginPasswordTip                        CSTRING(80)
LoginPasswordShowState                  LONG
LoginPasswordClearClipboardAfterPaste   LONG
RC                                      LONG

LoginPasswordCue                        = ''
LoginPasswordTip                        = ''
LoginPasswordShowState                  = 0
LoginPasswordClearClipboardAfterPaste   = 0

RC = vuPasswordInit(?LoginPassword{PROP:Handle}, LoginPasswordShowState, LoginPasswordCue, LoginPasswordTip, LoginPasswordClearClipboardAfterPaste)
```

## Clipboard clearing behavior

When `ClearClipboardAfterPaste` is set to `1`, vuFileTools clears the clipboard after a successful paste into the managed control. This helps reduce the chance that a pasted password or other sensitive value can be pasted again somewhere else afterward.

When `ClearClipboardAfterPaste` is set to `0`, vuFileTools leaves the clipboard content alone, allowing the user to paste the same content elsewhere if needed.

This option applies only to paste activity handled through the managed password control.

## Notes

- The function creates its own eye button and manages it internally.
- The developer does not need to create the button, provide icon files, or manually position the button.
- The eye icons are compiled into the DLL as resources.
- The button is created automatically in the proper relative position next to the control.
- The eye button automatically follows the managed control's visibility and size changes.
- If the entry control is disabled or enabled, the eye button is disabled or enabled too.
- Cue text is optional. If `CueText` is blank, no cue text is drawn.
- Tooltip text is optional. If `TooltipText` is blank, no tooltip is shown.
- Built-in paste support for password-masked `ENTRY` controls is part of the feature set and helps the control behave the way users expect from a modern password field.
- Clipboard clearing after paste is optional and controlled by `ClearClipboardAfterPaste`.
- The button is resized and repositioned as the control moves or changes size.
- The control supports normal keyboard and paste behavior while still using the original Clarion entry control.

## Related functions

- [vuPasswordToggle](vuPasswordToggle.md)
- [vuPasswordCleanup](vuPasswordCleanup.md)

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)