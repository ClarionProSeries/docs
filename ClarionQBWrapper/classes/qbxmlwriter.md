---
title: "QBXMLWriter"
description: "Details for the QBXMLWriter class, including purpose, properties, and key methods."
keywords: ["Clarion", "QuickBooks", "QBXML", "QBXMLWriter", "requests", "XML", "attributes"]
page_type: "reference"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

# QBXMLWriter

This class constructs well formatted QBXML request strings with line breaks, indentation, and nested tag grouping. It manages formatting and structure validation automatically to simplify writing valid XML for QuickBooks Desktop.

---

## Purpose

Builds readable and properly nested QBXML request buffers by managing indentation, tag state, and optional attributes. Also provides utilities to save or reload XML files for testing.

---

## Properties

| Property | Type | Summary |
|:---|:---|:---|
| QBConnectionManagerObject | &QBConnectionManager | Reference to the shared connection manager. |
| QBSessionManagerObject | &QBSessionManager | Reference to the shared session manager. |
| DebugObject | &QBDebugLogger | Shared debug logger used across the wrapper. |
| RequestType | CSTRING | The request type being built, for example `CustomerAdd`. |
| RawMode | BYTE | If TRUE, disables formatting for direct output. |
| XMLRequestName | CSTRING | Tracks the request root tag name. |
| TempFileFolder | CSTRING | Default folder for temporary XML files. |
| TempFilePath | CSTRING | Full path used for temporary file operations. |
| XMLVersionString | CSTRING | XML version header used by the request. |
| QBXMLVersionString | CSTRING | QBXML version header used by the request. |
| LastOutputFile | CSTRING | Stores the last file path used when saving output. |
| ResponseBufferTag | CSTRING | Optional tag name that defines the target element in response parsing. |
| DataBlockStart | LONG | Character offset to the beginning of a parsed block. |
| DataBlockEnd | LONG | Character offset to the end of a parsed block. |
| ResponseLength | LONG | Length of the parsed response content. |
| RequestAttributeQueue | QUEUE | Holds any tag level attributes applied to the request. |

---

## Key Methods

| Method | Prototype (summary) | Description |
|:---|:---|:---|
| Init | Init(RequestType, XMLVersion, QBXMLVersion, TagAttributes) | Initializes request state and sets version info. Accepts optional attributes for the root tag. |
| RequestAddRawXML | RequestAddRawXML(RawXML) | Inserts a raw XML block directly into the request buffer. |
| RequestAddTag | RequestAddTag(TagName, TagValue) | Adds a single tag with a value at the current level. |
| RequestOpenTag | RequestOpenTag(TagName) | Opens a new nested tag group and increases indentation. |
| RequestCloseTag | RequestCloseTag(TagName) | Closes the last opened tag of the given name and decreases indentation. |
| RequestAddAttribute | RequestAddAttribute(AttrName, AttrValue) | Assigns an attribute to the current tag before it is closed. |
| RequestClose | RequestClose() | Finalizes and closes the entire XML request. |
| FormatXMLString | FormatXMLString() | Returns the formatted request as a readable string. |
| WriteBufferToFile | WriteBufferToFile(BufferType, \[OutputPath\], \[RunFile\]) | Saves a specific buffer to disk and optionally runs the file. |
| SaveRequestToFile | SaveRequestToFile(FileName, \[RunFile\]) | Writes the current request buffer to a file. |
| SaveResponseToFile | SaveResponseToFile(FileName, \[RunFile\]) | Writes the response buffer to a file. |
| LoadRequestFromFile | LoadRequestFromFile(FileName) | Loads a request buffer from disk for editing or replay. |

---

## Notes and Behavior

- The template creates a global instance of `QBXMLWriter` and wires its references to the connection and session managers.  
- `RawMode` allows direct unformatted output for speed or for pasting prebuilt XML. Leave this OFF for human readable output during development.  
- Attributes can be attached to the current open tag using `RequestAddAttribute` before calling the corresponding close.  
- File helpers make it easy to persist test requests and responses for later review or automation.  

---

## Related Pages

- [QBConnectionManager](qbconnectionmanager.md)  
- [QBSessionManager](qbsessionmanager.md)  
- [QBXMLParser](qbxmlparser.md)  
- [QBXMLTools](qbxmltools.md)  
- [QBDebugLogger](qbdebuglogger.md)  
- [QBAIClass](qbaiclass.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
