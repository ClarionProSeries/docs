---
title: "CDGetDimmingEnabled"
summary: "Read the current on/off state of dimming."
description: "Read the current on/off state of dimming."
keywords: ["cdWindowDim", "Clarion", "window dimming"]
page_type: "function"
last_updated: "2026-11-18"
---

[Home](../index.md) | [All DLL Functions](index.md) | [Using the Template](../template-usage.md)

# CDGetDimmingEnabled

Read the current on/off state of dimming.

## Clarion declaration

```clarion
CDGetDimmingEnabled(),SIGNED,PROC,PASCAL,RAW,NAME('CDGetDimmingEnabled')
```

**Parameters:** No arguments.

## Example

```clarion
DimmingStatus = CDGetDimmingEnabled()
```

Returns 1 when enabled and 0 when disabled on a successful query. The **Get Dimming Status** code template can store this in a LONG variable.

For manual dim and restore calls, a positive result normally indicates an accepted state; 0 or a negative status should be checked before relying on the effect. The global template supplies the MAP and LIB linkage automatically.

See [Manual Dimming](../guides/manual-dimming.md), [START Procedures](../guides/started-children.md), and [Troubleshooting](../troubleshooting.md).

[All DLL Functions](index.md) | [Home](../index.md)
