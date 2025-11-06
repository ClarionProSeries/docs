---
title: "Hand Coding Quick Start"
summary: "Use the wrapper without templates by wiring the classes yourself."
description: "How to initialize, cross reference, select a connection type, and shut down the wrapper classes in a hand coded Clarion app, with paste ready examples."
keywords: ["Clarion", "QuickBooks", "QBXML", "hand coded", "manual wiring", "startup", "shutdown", "connection type", "QBConnectionType"]
page_type: "guide"
last_updated: "2025-11-01"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)

# Hand Coding Quick Start

The **ProSeriesQBWrapperGlobal** template makes setup fast, but it is **not required**. You can use the classes and DLL directly in a hand coded application.

A good starting point is the demo app included with this product. It uses the template, so reviewing the generated code in **MODULE** view shows exactly how to:

- Declare the global instances for each class
- Initialize and shut down correctly
- Set defaults such as `QBAppID`, file mode, and **connection type**
- Call the wrapper methods from your code

The wrapper is designed to be self contained and portable, with no hard dependency on the template system or a specific Clarion version.

If you are building a utility EXE or an internal framework without the Application Generator, hand coded integration may be preferable.

---

## What the template normally does

When you skip the template, you must perform the same wiring the template would generate:

- Attach the shared debug logger to each class
- Cross reference classes so they can collaborate
- Set `QBAppID`, `QBAppName`, optional `QBFilePath`, `QBFileMode`, and **`QBConnectionType`**
- Optionally check elevation and enforce first run authorization
- Open and close the QuickBooks connection
- End any active session on shutdown

Use the examples below as a checklist.

---

## Choosing a connection type

Set `QBConnMgr.QBConnectionType` to match how your app should talk to QuickBooks. The template’s default is `QBConType:LocalQBDLaunch`.

| Constant                    | Typical use case |
|:---------------------------|:-----------------|
| `QBConType:LocalQBD`       | Connect to an already open local QuickBooks Desktop instance. |
| `QBConType:LocalQBDLaunch` | Launch QuickBooks locally if it is not already open, then connect. |
| `QBConType:LocalQBDNoUI`   | Local connection without bringing QuickBooks UI to front when possible. |
| `QBConType:RemoteQBD`      | Connect to a remote QuickBooks instance (eg. via Remote Desktop). |
| `QBConType:RemoteQBDLaunch`| Launch on remote session then connect. |
| `QBConType:RemoteQBDNoUI`  | Remote connection without UI when possible. |
| `QBConType:Unknown`        | Do not use in production; for debugging only. |

**Notes**

- Pair your connection type with an appropriate `QBFileMode` (`QBFileMode:DontCare`, `QBFileMode:SingleUser`, `QBFileMode:MultiUser`) and `QBFilePath` (blank means “current open company”).  
- First run authorization still requires the user to approve in the QuickBooks UI. See [Application Authorization, App ID, and App Name](authorization-appid-appname.md).

---

## Program startup (manual wiring)

Paste this near application startup (before sending any requests). Indentation follows Clarion best practices for readability.

```clarion
! Attach the shared debug logger to each class
QBConnMgr.DebugObject       &= QBDebugLog
QBSessionMgr.DebugObject    &= QBDebugLog
QBWriter.DebugObject        &= QBDebugLog
QBParser.DebugObject        &= QBDebugLog
QBTools.DebugObject         &= QBDebugLog
QBAI.DebugObject            &= QBDebugLog

! Cross reference collaborating classes
QBSessionMgr.QBConnectionManagerObject  &= QBConnMgr
QBSessionMgr.QBXMLWriterObject          &= QBWriter

QBWriter.QBConnectionManagerObject      &= QBConnMgr
QBWriter.QBSessionManagerObject         &= QBSessionMgr

QBParser.QBSessionManagerObject         &= QBSessionMgr
QBParser.QBXMLWriterObject              &= QBWriter
QBParser.QBXMLToolsObject               &= QBTools

QBTools.QBSessionManagerObject          &= QBSessionMgr
QBTools.QBXMLWriterObject               &= QBWriter
QBTools.QBXMLParserObject               &= QBParser

QBWriter.QBXMLToolsObject               &= QBTools

! Wire QBAI helper
QBAI.QBWriterObject       &= QBWriter
QBAI.QBSessionMgrObject   &= QBSessionMgr
QBAI.QBParserObject       &= QBParser
QBAI.QBToolsObject        &= QBTools

! App identity and options
QBConnMgr.QBAppID          = 'YourAppID'
QBConnMgr.QBAppName        = 'YourAppName'
QBConnMgr.QBFilePath       = ''                       ! blank = currently open company
QBConnMgr.QBFileMode       = QBFileMode:DontCare
QBConnMgr.QBConnectionType = QBConType:LocalQBDLaunch ! choose from the table above

! Debug output preferences (optional but recommended)
QBDebugLog.EnableDebugView          = 1
QBDebugLog.ShowDebugViewInClassCode = 1
QBDebugLog.DebugViewAlwaysOnTop     = 1

! Elevation check (QuickBooks Desktop requires standard user context)
QBConnMgr.AppElevatedStatus = QBConnMgr.IsAppElevated()
IF QBConnMgr.AppElevatedStatus
  MESSAGE('This program is running as an elevated user and must be restarted as a standard user.', 'Elevation Warning')
  RETURN
END

! Optional: enforce first run authorization (see guide for flow)
! DO ROUTINE:ForceQBAuthorization   ! if you have implemented the routine outside the template

! Open the QuickBooks connection on demand
QBConnMgr.QBConnected = 0
IF QBConnMgr.QBOpenConnection() = 0
  QBConnMgr.QBConnected = 1
END
```

> Tip: With DebugView enabled, the template logs the chosen `QBConnectionType` and `QBFileMode`. In hand coded apps, you can log the same values with your own debug lines to confirm runtime settings.

---

## Program shutdown (clean close)

Call this during app shutdown to end any active session and close the connection cleanly.

```clarion
! End any active session
IF QBSessionMgr.InSession
  IF QBSessionMgr.EndSession() = 0
    QBSessionMgr.InSession = 0
  END
END

! Close the QuickBooks connection
IF QBConnMgr.QBConnected
  IF QBConnMgr.QBCloseConnection() = 0
    QBConnMgr.QBConnected = 0
  END
END
```

---

## Quick checklist

- `QBAppID` and `QBAppName` are set.
- `QBFilePath` is correct for your scenario, or left blank to use the open company.
- `QBFileMode` matches expected access (SingleUser, MultiUser, or DontCare).
- **`QBConnectionType`** is appropriate for local, remote, launch, or no UI needs.
- Elevation is not enabled for your process.
- First run authorization completed successfully.

---

## Next steps

- Verify first run authorization: [Application Authorization, App ID, and App Name](authorization-appid-appname.md)  
- Inspect payloads during development: [Using the XML Viewer](using-the-xml-viewer.md)  
- Validate structure and iterate faster: [Using the Code Checker Console](using-the-code-checker-console.md)

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)
