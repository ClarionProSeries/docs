---
title: "QBConnectionManager"
description: "Details for QBConnectionManager including properties and public methods."
keywords: ["Clarion", "QuickBooks", "QBXML", "QBConnectionManager", "QBAI", "ProSeriesQBWrapper", "connection", "license", "elevation"]
page_type: "reference"
last_updated: "2025-10-31"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

# QBConnectionManager

Manages connection parameters, licensing, and application elevation state for QuickBooks Desktop.  
This class is automatically instantiated as a global object when you add the **ProSeriesQBWrapperGlobal** template extension.

---

## Key Properties

| Property | Type | Purpose |
|:---|:---|:---|
| DebugObject | &QBDebugLogger | Shared debug logger used across the wrapper. |
| QBConnected | BYTE | Tracks whether a connection to QuickBooks is active. |
| QBAppName | CSTRING(128) | Application name shown in the QuickBooks authorization dialog. |
| QBAppID | CSTRING(64) | Identifier string used during QuickBooks connection. |
| QBFilePath | CSTRING(1024) | Full path to the target QuickBooks company file. |
| LicenseKey | CSTRING(256) | Developer license key that unlocks full functionality. |
| QBFileMode | LONG | File mode, such as Do not care vs Specific file. |
| AppElevatedStatus | BYTE | TRUE if the process is running elevated. |
| AppElevatedLevel | CSTRING(15) | Text label for elevation level. |
| QBLastResultCode | LONG | Return code from the last connection related call. |
| QBConnectionStatus | LONG | Internal connection status flag. |

---

## Public Methods

All methods accept an optional `EnableDebug BYTE` parameter. Omit it to use the current logger setting.

| Method | Prototype | Summary |
|:---|:---|:---|
| Construct | Construct() | Class constructor. Sets defaults. |
| Destruct | Destruct() | Class destructor. |
| IsAppElevated | IsAppElevated(BYTE EnableDebug=0), BYTE | Returns TRUE if the process is elevated. |
| QBOpenConnection | QBOpenConnection(BYTE EnableDebug=0), LONG | Opens the QuickBooks SDK connection. Returns 0 on success. |
| QBCloseConnection | QBCloseConnection(BYTE EnableDebug=0), LONG | Closes the QuickBooks SDK connection. Returns 0 on success. |
| QBIsConnected | QBIsConnected(BYTE EnableDebug=0), BYTE | Returns TRUE if the connection is active. |

---

## Notes

- Set `QBAppName`, `QBAppID`, and `QBFilePath` before the first open if you need values different from template defaults.  
- Debug output can be controlled at runtime via `QBDebugLogger` or by passing `EnableDebug=1` to a call.  
- Typical use does not require calling these methods directly. The high level QBAI class and templates coordinate the lifecycle.

---

## Relationship To Other Classes

Typical lifecycle when called directly:

1. QBConnectionManager.QBOpenConnection()
2. QBSessionManager.BeginSession()
3. QBSessionManager.ProcessRequest()
4. QBSessionManager.EndSession()
5. QBConnectionManager.QBCloseConnection()

When you use **QBAIClass**, these steps are coordinated for you.

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
