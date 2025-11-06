---
title: "Clarion QuickBooks Wrapper - Templates"
description: "Reference for the single Clarion QuickBooks Wrapper template that wires the wrapper into your app."
keywords: ["Clarion", "QuickBooks", "QBXML", "QBAI", "templates", "global extension"]
page_type: "reference"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](index.md) | [Classes](../classes/index.md)

# Clarion QuickBooks Wrapper - Templates

The **Clarion QuickBooks Wrapper** has one global template that declares and wires together the class objects used to connect to QuickBooks Desktop, build requests, send them, and parse responses.

---

## Registry Template

This is the root template entry that appears in the Clarion registry.

| Registry Name | Display Name |
|:---|:---|
| **PS_ProSeriesQBWrapper.tpl** | Clarion ProSeries QuickBooks API Wrapper |

---

## Global Extension Template

Added under Global Extensions.

| Template Name | Description |
|:---|:---|
| **ProSeriesQBWrapperGlobal** | Declares and initializes `QBConnectionManager`, `QBSessionManager`, `QBXMLWriter`, `QBXMLParser`, `QBXMLTools`, and `QBDebugLogger`. Provides settings for AppID, AppName, optional company file path, QBXML version, connection and session behavior, DebugView toggles, and XML output options. |

**Notes**

- You need to enter the license data provided with your order to activate the DLL.
- You need to set up the AppName, AppID, and (optional) File Path here.
- With this extension present, the core class objects are declared as globals and cross referenced so you can call them from any procedure.
- You can enable automatic connection and session management or handle those steps manually.

---

# Summary

- One template only. Add **ProSeriesQBWrapperGlobal** at the Global level to use the wrapper.
- Works in both single EXE and multi-DLL Clarion applications.
- For class details and the high level **QBAIClass**, see the [Classes](../classes/index.md) pages.

---

[Home](../index.md) | [Templates](index.md) | [Classes](../classes/index.md)
