---
title: "QBXMLParser"
description: "Details for the QBXMLParser class, including purpose, properties, and key methods."
keywords: ["Clarion", "QuickBooks", "QBXML", "QBXMLParser", "responses", "XML", "parsing"]
page_type: "reference"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

# QBXMLParser

This class parses XML responses returned from QuickBooks Desktop and supports iteration over nested data blocks such as `CustomerRet` or `InvoiceRet`. It works with minimal dependencies and uses plain string scanning for performance and compatibility.

---

## Purpose

Parses raw QuickBooks XML responses and provides methods to extract blocks of data, locate values, and step through multiple records within the result set.

---

## Properties

| Property | Type | Summary |
|:---|:---|:---|
| QBSessionManagerObject | &QBSessionManager | Reference to the current session manager instance. |
| DebugObject | &QBDebugLogger | Shared debug logger object. |
| QBXMLWriterObject | &QBXMLWriter (optional) | Optional reference to the writer instance. |
| RequestType | CSTRING | The request type string, for example `CustomerQuery`. |
| ResponseBufferTag | CSTRING | Tag used to identify the matching response block. |
| CurrentBlockStart | LONG | Start position of the current XML block. |
| CurrentBlockEnd | LONG | End position of the current XML block. |
| CurrentBlockIndex | LONG | Index for block iteration. |
| BlockCount | LONG | Total number of matched blocks in the response. |
| DataBlockStart | LONG | Start position of the full result block. |
| DataBlockEnd | LONG | End position of the full result block. |
| ChildSearchPos | LONG | Current scan position for nested data blocks. |

---

## Key Methods

| Method | Prototype (summary) | Description |
|:---|:---|:---|
| Init | Init(PassedRequestType, QBSessionMgr) | Initializes the parser with a request type and session object. |
| ValidateResponse | ValidateResponse() | Locates and validates the root response block, for example `CustomerQueryRs`. |
| GetFirstDataBlock | GetFirstDataBlock(TagName, IncludeTags) | Returns the first matching nested block as a string. |
| FindNextDataBlock | FindNextDataBlock(TagName, IncludeTags) | Returns the next matching block after the current one. |
| FindNextChildBlock | FindNextChildBlock(TagName, IncludeTags) | Finds the next child block starting at the current search position. |
| GetField | GetField(FieldName) | Extracts a value from the current XML block. |
| GetFieldFromBlock | GetFieldFromBlock(BlockData, FieldName) | Extracts a value from a provided block of XML. |
| FindInDataBlock | FindInDataBlock(SearchFor) | Locates a string within the current response block. |
| FindInXML | FindInXML(SearchFor) | Searches the entire XML response for a given string. |
| GetAttributeValueFromResponse | GetAttributeValueFromResponse(Tag, Attribute) | Retrieves a tag attribute value from the response. |

---

## Notes and Behavior

- Use `ValidateResponse()` first to confirm that the expected top level response block is present.  
- Iteration helpers track positions internally so you can step through repeated `*Ret` groups without re-parsing the entire buffer.  
- The parser uses direct string scanning for speed and compatibility with Clarion string types.  
- Works in tandem with `QBSessionManager` which supplies the current response buffer.

---

## Related Pages

- [QBConnectionManager](qbconnectionmanager.md)  
- [QBSessionManager](qbsessionmanager.md)  
- [QBXMLWriter](qbxmlwriter.md)  
- [QBXMLTools](qbxmltools.md)  
- [QBDebugLogger](qbdebuglogger.md)  
- [QBAIClass](qbaiclass.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
