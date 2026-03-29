---
title: "vuResetStoredSettings"
summary: "Clear stored vuMailKit settings, profiles, and OAuth state."
description: "Clear stored vuMailKit settings, profiles, and OAuth state. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)"
keywords: ["vuMailKit","function","vuresetstoredsettings"]
function_name: "vuResetStoredSettings"
category: "Diagnostics"
version_added: "1.0"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md)

# vuResetStoredSettings()

## Purpose

Clears persisted vuMail/vuMailKit registry settings, saved profiles, active profile metadata, OAuth tokens, pending OAuth files, and saved OAuth settings files. This is the nuclear reset option for troubleshooting.

## Export name

- `vuResetStoredSettings`

## Clarion prototype (Inside Global MAP)

- `vuResetStoredSettings(),SIGNED,PROC,PASCAL,RAW,NAME('vuResetStoredSettings')`

## Return value

- Returns `1` when the operation succeeds, otherwise `0`. Use `vuMailLastError()` for more detail when needed.

## Notes

- This is intended for troubleshooting and clean-room testing.
- It clears persisted settings only. It does not change values already held in the current process until the application or DLL is reinitialized.
