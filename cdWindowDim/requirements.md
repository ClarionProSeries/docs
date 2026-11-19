---
title: "cdWindowDim - Requirements"
summary: "Clarion versions, template chains, and Windows requirements for cdWindowDim."
description: "Clarion versions, template chains, and Windows requirements for cdWindowDim."
keywords: ["cdWindowDim", "Clarion", "Code Drop", "requirements", "window dimming"]
page_type: "overview"
last_updated: "2026-11-18"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# cdWindowDim - Requirements

cdWindowDim works with all versions of Clarion:

- **Clarion 12**
- **Clarion 11.x**
- **Clarion 10**
- **Clarion 9.x**
- **Clarion 8**
- **Clarion 7**
- **Clarion 6**
- **Clarion 5.5**

cdWindowDim works with both template chains:

- **ABC Template Chain**
- **Legacy Clarion Template Chain**

Both AppGen and hand-coded applications are supported.

cdWindowDim works with both single EXE and multi-DLL applications.

## Window Dimming manifest requirement

Applications using Window Dimming must include a **Windows 8-or-later compatibility manifest** in the EXE, or the visual overlay may not appear. See [Window Dimming Troubleshooting](troubleshooting.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

Automatic message dimming is enabled by default for standard Clarion messages and supported CapeSoft MessageBox windows. For other message windows, use the optional [Custom Message Window extension](guides/custom-message-windows.md).
