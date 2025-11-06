---
title: "Clarion QuickBooks Wrapper - Classes"
description: "Reference for Clarion QuickBooks Wrapper classes with links to per-class pages, plus an overview of how they work together."
keywords: ["Clarion", "QuickBooks", "QBXML", "QBAI", "classes", "reference", "methods", "properties"]
page_type: "reference"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

# Clarion QuickBooks Wrapper - Classes

The Clarion QuickBooks Wrapper provides a set of classes that coordinate connection, session control, request XML construction, response parsing, tools, and debug logging for QuickBooks Desktop. Use this index to jump to the per-class pages.

---

## High-Level Class

| Class Name | Purpose |
|:---|:---|
| [QBAIClass](qbaiclass.md) | High-level facade that streamlines development and makes AI assisted workflows possible. Handles request setup, automatic tag closing, sending, and response traversal with simple calls like `Init`, `AddTag`, `AddGroupStart`, `AddGroupEnd`, `SendRequest`, `GetField`, and iterators for multi record reads. |

---

## Core Classes

These six classes are the internal foundation used by QBAIClass and by advanced users who prefer direct control.

| Class Name | Purpose |
|:---|:---|
| [QBConnectionManager](qbconnectionmanager.md) | Handles licensing, QuickBooks connection setup, and closing. |
| [QBSessionManager](qbsessionmanager.md) | Manages session state with QuickBooks and sends or receives XML. Provides `ProcessRequest`. |
| [QBXMLWriter](qbxmlwriter.md) | Builds properly formatted QBXML request strings. Supports tag attributes and raw injection. |
| [QBXMLParser](qbxmlparser.md) | Parses XML response strings into fields and groups. Provides field accessors and group iteration. |
| [QBXMLTools](qbxmltools.md) | Helper methods including formatted XML output, clipboard helpers, file save, and a two tab XML viewer. |
| [QBDebugLogger](qbdebuglogger.md) | Manages DebugView output, formatting, and toggles used across the wrapper. |

---

## Shared Notes

- When you add the **ProSeriesQBWrapperGlobal** template extension, the wrapper declares the core objects as globals and wires internal references for you.  
- You can call the high-level **QBAIClass** for most tasks. Use the core classes directly for specialized workflows like iterator blocks or custom test tools.  
- Separation of concerns keeps XML building, parsing, session control, and logging modular and easy to reason about.

---

## High-Level Interaction Flow

A typical request follows this sequence behind the scenes:

1. `QBConnectionManager` -> `OpenConnection()`
2. `QBSessionManager` -> `BeginSession()`
3. `QBXMLWriter` -> Build the request
4. `QBSessionManager` -> `ProcessRequest()`
5. `QBXMLParser` -> Parse the response
6. `QBSessionManager` -> `EndSession()`
7. `QBConnectionManager` -> `CloseConnection()`

**Tip:** When you use **QBAIClass**, it coordinates these steps for you.

---

## Internal References

The template wires cross references among the classes so they can collaborate. You can override them manually if you are bypassing the template or building a custom harness.

Examples:

- `QBWriter.QBConnectionManagerObject` points to `QBConnectionManager`  
- `QBParser.QBSessionManagerObject` points to `QBSessionManager`  
- `QBTools.QBXMLWriterObject` points to `QBXMLWriter`

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
