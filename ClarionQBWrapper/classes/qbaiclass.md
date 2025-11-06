---
title: "QBAIClass"
description: "High-level facade for building QBXML requests, sending them, and traversing responses."
keywords: ["Clarion", "QuickBooks", "QBXML", "QBAIClass", "high-level API", "iterator"]
page_type: "reference"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

# QBAIClass

`QBAIClass` is a high-level class that coordinates request construction, sending, receiving and parsing return data for common QuickBooks Desktop tasks. It wraps the core classes so you can write less code and focus on the request and the fields you need.

It is also the medium that allows you to use AI to assist you in preparing your QBXML requests and even writing the Clarion code to make it happen.  See [Using QBAI with an AI to Tame the QuickBooks Desktop API](ai-usage.md) for details.

Global instances and cross references to this class are created when you add the **ProSeriesQBWrapperGlobal** template.

---

## References and State

| Name | Type | Purpose |
|:---|:---|:---|
| `QBWriterObject` | `&QBXMLWriter` | Writer used to build request XML. |
| `QBSessionMgrObject` | `&QBSessionManager` | Session manager that sends requests and stores responses. |
| `QBParserObject` | `&QBXMLParser` | Parser used to validate and read response fields and groups. |
| `QBToolsObject` | `&QBXMLTools` | Tools for formatting, clipboard, and viewer support. |
| `DebugObject` | `&QBDebugLogger` | Shared logger for DebugView output. |
| `CurrentGroupName` | `CSTRING(64)` | Tracks the active group for iteration. |
| `IteratorID` | `CSTRING(128)` | Iterator token returned by QuickBooks. |
| `IteratorRemainingCount` | `CSTRING(16)` | Remaining records reported by QuickBooks. |
| `IteratorGroupName` | `CSTRING(64)` | Target group name for iterated reads. |
| `CurrentIterationBlock` | `STRING(MAX_QBXML_RESPONSE_SIZE)` | Buffer for the current iterated block. |

---

## Public Methods

| Method | Prototype | Summary |
|:---|:---|:---|
| `Init` | `Init(STRING RequestType)` | Initialize a new request. Do not include the `Rq` suffix. |
| `AddTag` | `AddTag(STRING TagName, STRING Value)` | Add a single tag and value to the current request. |
| `AddGroupStart` | `AddGroupStart(STRING GroupName)` | Open a nested group tag for the request. |
| `AddGroupEnd` | `AddGroupEnd()` | Close the most recent open group. |
| `SendRequest` | `SendRequest(), LONG` | Send the current request. Returns 0 on success. |
| `GetField` | `GetField(STRING TagName), STRING` | Return the value for a tag within the current block. |
| `GetFirstGroup` | `GetFirstGroup(STRING GroupName), BYTE` | Select the first matching `*Ret` group in the response. |
| `GetNextGroup` | `GetNextGroup(), BYTE` | Advance to the next matching group. |
| `BeginIteratedQuery` | `BeginIteratedQuery(STRING RequestType, STRING GroupName, LONG MaxReturned)` | Start an iterated request cycle. |
| `NextIteratedRecord` | `NextIteratedRecord(), BYTE` | Advance to the next record in an iterated query. |
| `ShowXMLViewer` | `ShowXMLViewer()` | Open the two tab XML viewer for request and response. |
| `CopyRequestToClip` | `CopyRequestToClip()` | Copy the current request XML to the clipboard. |
| `CopyResponseToClip` | `CopyResponseToClip()` | Copy the last response XML to the clipboard. |
| `SaveRequestToFile` | `SaveRequestToFile(STRING FilePath)` | Save the current request XML to disk. |
| `SaveResponseToFile` | `SaveResponseToFile(STRING FilePath)` | Save the last response XML to disk. |

---

## Notes and Conventions

- Pass `RequestType` without the `Rq` suffix. The wrapper applies it automatically.  
- Use `GetFirstGroup('EntityRetName')` followed by `GetNextGroup()` to traverse multi record results.  
- Iterated queries use `BeginIteratedQuery` and `NextIteratedRecord` for large datasets.  
- Viewer and clipboard helpers are provided for inspection and diagnostics.  

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
