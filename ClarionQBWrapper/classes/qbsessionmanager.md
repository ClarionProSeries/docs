---
title: "QBSessionManager"
description: "Details for the QBSessionManager class, including purpose, properties, and key methods."
keywords: ["Clarion", "QuickBooks", "QBXML", "QBSessionManager", "sessions", "requests", "responses"]
page_type: "reference"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

# QBSessionManager

This class handles runtime session management with QuickBooks, including session tracking, XML communication, and status reporting.

It is globally instantiated by the template and works alongside [QBConnectionManager](qbconnectionmanager.md) to manage low level interactions.

---

## Purpose

Manages session state, sends XML requests, stores the response and status information, and provides high level methods for executing QuickBooks transactions.

---

## Properties

| Property | Type | Summary |
|:---|:---|:---|
| QBConnectionManagerObject | &QBConnectionManager | Reference to the global connection manager. |
| DebugObject | &QBDebugLogger | Shared debug logger used across the wrapper. |
| SessionTicket | CSTRING | Holds the current session ticket string. |
| InSession | BYTE | TRUE when a session is active. |
| IsConnected | BYTE | TRUE when a connection to QuickBooks is open. |
| XMLRequest | &CSTRING | Reference to the current request XML string. |
| XMLResponse | &CSTRING | Reference to the last response XML string. |
| ResponseStatusCode | LONG | Status code returned by QuickBooks. |
| ResponseStatusMessage | CSTRING(256) | Text message describing the result. |
| ResponseStatusSeverity | CSTRING(32) | Status severity, for example Info, Warn, or Error. |
| ResponseRetCount | LONG | Number of records returned in the response. |
| DataBlockStart | LONG | Character offset to the beginning of the parsed block. |
| DataBlockEnd | LONG | Character offset to the end of the parsed block. |

---

## Key Methods

| Method | Prototype (summary) | Description |
|:---|:---|:---|
| Construct | Construct() | Class constructor. Initializes fields and references. |
| Destruct | Destruct() | Class destructor. Clears references and state. |
| BeginSession | BeginSession(\[EnableDebug\]) | Starts a session with the current company file. |
| EndSession | EndSession(\[EnableDebug\]) | Ends the current session with QuickBooks. |
| ProcessRequest | ProcessRequest() | Sends the current request to QuickBooks and stores the response, status, and counts. |

All methods that accept `EnableDebug` toggle additional logging through the shared [QBDebugLogger](qbdebuglogger.md).

---

## Notes and Behavior

- The template wires this class to the global connection and logging objects. In normal use you do not need to assign pointers manually.  
- `ProcessRequest` updates `XMLResponse`, `ResponseStatusCode`, `ResponseStatusMessage`, `ResponseStatusSeverity`, and `ResponseRetCount`.  
- `InSession` reflects current session state. `IsConnected` reflects connection state as reported by the connection manager.  
- For advanced testing you may override wired references, but typical applications rely on the template generated globals.

---

## Related Pages

- [QBConnectionManager](qbconnectionmanager.md)  
- [QBXMLWriter](qbxmlwriter.md)  
- [QBXMLParser](qbxmlparser.md)  
- [QBXMLTools](qbxmltools.md)  
- [QBDebugLogger](qbdebuglogger.md)  
- [QBAIClass](qbaiclass.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
