---
title: "Running Elevated vs Standard User"
summary: "Why QuickBooks requires a standard user context and how to avoid elevation problems."
description: "Explains how Windows elevation interferes with QuickBooks Desktop, common symptoms, Clarion 9.x specifics, and the built in elevation check."
keywords: ["Clarion", "QuickBooks", "elevation", "admin", "UAC", "IsAppElevated", "standard user"]
page_type: "guide"
last_updated: "2025-11-01"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)

# Running Elevated vs Standard User

QuickBooks Desktop does not run elevated.

If your app runs elevated and tries to communicate with QuickBooks, Windows will start a new hidden QuickBooks instance under the elevated account. That profile does not have the expected company files and settings, so nothing works as intended. You may see connection failures, empty responses, or no visible sign that QuickBooks was accessed.

---

## When this bites

For most developers and end users, apps run as a standard user. The main exception is Clarion 9.x development.

### Clarion 9.x developers

- Clarion 9.x installs under Program Files. The IDE and compiled EXEs often run elevated.  
- When you click Run from the IDE, your app inherits elevation and fails to connect properly to QuickBooks.

**Workaround for C9.x**

- Use the Start Menu shortcut to open the project folder.  
- Run your EXE directly from Windows Explorer so it launches as a standard user.

---

## Best practice

Always test for elevation at startup and warn the user to restart as a normal user if elevation is detected. The global template inserts this check for you automatically.

### Manual check example

```clarion
! Detect elevation and stop early if found
QBConnMgr.AppElevatedStatus = QBConnMgr.IsAppElevated()
IF QBConnMgr.AppElevatedStatus
  MESSAGE('This program is running as an elevated user and must be restarted as a standard user.', 'Elevation Warning', ICON:Exclamation)
  RETURN
END
```

- `IsAppElevated()` sets `AppElevatedStatus` and fills `AppElevatedLevel` for diagnostics.  
- Show a clear message and exit before attempting to open a QuickBooks connection.

---

## Related guides

- [Application Authorization, App ID, and App Name](authorization-appid-appname.md)  
- [Hand Coding Quick Start](hand-coding-quick-start.md)  
- [Using DebugView](using-debugview.md)  
- [Troubleshooting](troubleshooting.md)

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)
