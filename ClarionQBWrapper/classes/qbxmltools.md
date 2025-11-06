---
title: "QBXMLTools"
description: "Details for the QBXMLTools utility class, including purpose, properties, and key methods."
keywords: ["Clarion", "QuickBooks", "QBXML", "tools", "viewer", "formatting", "clipboard", "encoding"]
page_type: "reference"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

# QBXMLTools

This utility class provides helper functions for encoding, formatting, clipboard access, and displaying XML request and response data in a readable viewer. It also maintains the entity tables used during XML escaping and decoding.

---

## Purpose

Offers convenience methods for working with QBXML data, including date and time formatting, XML escaping and unescaping, viewer formatting, and clipboard export.

---

## Properties

| Property | Type | Summary |
|:---|:---|:---|
| DebugObject | &QBDebugLogger | Shared debug logger object. |
| QBSessionManagerObject | &QBSessionManager | Reference to the active session manager. |
| QBXMLWriterObject | &QBXMLWriter | Reference to the writer instance. |
| XMLEntityTable | QUEUE | Dynamic table of XML entity encodings. |
| XMLViewQueue | QUEUE | Internal queue used to build formatted viewer output. |
| EnableXMLEncoding | BYTE | Enables XML encoding when set. |
| EnableExtendedEncoding | BYTE | Enables extended entity mappings. |
| EnableXMLDecoding | BYTE | Enables XML decoding on output. |
| PreloadDefaultXMLEntities | BYTE | Loads default entities automatically when set. |
| DefaultXMLEntitiesLoaded | BYTE | Tracks whether default entities are loaded. |

---

## Key Methods

| Method | Prototype (summary) | Description |
|:---|:---|:---|
| EncodeXML | EncodeXML(Source) | Converts special characters to XML safe equivalents. |
| DecodeXML | DecodeXML(Source) | Converts escaped XML back to raw characters. |
| AddEncodedCharPair | AddEncodedCharPair(OriginalString, EncodedString) | Adds a custom escape mapping to the entity table. |
| LoadDefaultXMLEntities | LoadDefaultXMLEntities() | Loads common XML entity mappings. |
| FormatXMLBuffer | FormatXMLBuffer(RawXML) | Reformats XML with indentation and line breaks. |
| ParseQBXMLToQueue | ParseQBXMLToQueue(RawXML) | Parses and stores formatted blocks for the viewer. |
| BuildFormattedXMLFromQueue | BuildFormattedXMLFromQueue() | Builds a single formatted string from viewer queue data. |
| ShowXMLViewer | ShowXMLViewer() | Opens a two tab viewer for request and response XML. |
| CopyRequestToClipboard | CopyRequestToClipboard() | Copies the current request buffer to the clipboard. |
| CopyResponseToClipboard | CopyResponseToClipboard() | Copies the current response buffer to the clipboard. |
| BuildXMLDateTimeFromClarion | BuildXMLDateTimeFromClarion(Date, Time, DateOnly) | Creates an ISO style timestamp from Clarion values. |
| IsValidXMLDateTime | IsValidXMLDateTime(XMLDateTime) | Validates that a timestamp string matches the expected format. |
| SplitTimeForDate | SplitTimeForDate(TimeStringToSplit) | Extracts a DATE from a full date time string. |
| SplitTimeForTime | SplitTimeForTime(TimeStringToSplit) | Extracts a TIME from a full date time string. |
| SplitTimeForUTCOffset | SplitTimeForUTCOffset(TimeStringToSplit) | Returns the UTC offset from a timestamp string. |

---

## Notes and Behavior

- The viewer shows the most recent request and response XML and is useful for verification and troubleshooting.  
- Entity tables can be extended when custom encodings are required. Default tables can be preloaded at startup.  
- Clipboard helpers are available on this class. Wrapper level convenience methods may also exist on higher level classes.  
- Formatting helpers are intended for readability and do not alter the semantic content of the XML.

---

## Related Pages

- [qbconnectionmanager](qbconnectionmanager.md)  
- [qbsessionmanager](qbsessionmanager.md)  
- [qbxmlwriter](qbxmlwriter.md)  
- [qbxmlparser](qbxmlparser.md)  
- [qbdebuglogger](qbdebuglogger.md)  
- [qbaiclass](qbaiclass.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
