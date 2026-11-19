---
title: "CDWindowClosing"
summary: "Restore the parent when a registered START child closes."
description: "Restore the parent when a registered START child closes."
keywords: ["cdWindowDim", "Clarion", "window dimming"]
page_type: "function"
last_updated: "2026-11-18"
---

[Home](../index.md) | [All DLL Functions](index.md) | [Using the Template](../template-usage.md)

# CDWindowClosing

Restore the parent when a registered START child closes.

## Clarion declaration

```clarion
CDWindowClosing(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDWindowClosing')
```

**Parameters:** The thread number of the closing child (normally `THREAD()`).

## Example

```clarion
CloseResult = CDWindowClosing(THREAD())
```

Call in the child procedure as it closes; do not call from the parent immediately after START.

For manual dim and restore calls, a positive result normally indicates an accepted state; 0 or a negative status should be checked before relying on the effect. The global template supplies the MAP and LIB linkage automatically.

See [Manual Dimming](../guides/manual-dimming.md), [START Procedures](../guides/started-children.md), and [Troubleshooting](../troubleshooting.md).

[All DLL Functions](index.md) | [Home](../index.md)
