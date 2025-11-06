---
title: "Application Authorization, App ID, and App Name"
summary: "How QuickBooks Desktop authorization works, how to set AppID and AppName, and what users should expect on first run."
description: "Explain the QuickBooks Desktop authorization flow, how the wrapper enforces first run authorization, and where to set AppID and AppName."
keywords: ["Clarion", "QuickBooks", "QBXML", "authorization", "AppID", "AppName", "permissions", "Integrated Applications"]
page_type: "guide"
last_updated: "2025-11-01"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)

# Application Authorization, App ID, and App Name

When your application first communicates with QuickBooks Desktop, the user must authorize it inside the QuickBooks UI. This is a required step for all desktop API integrations.

The wrapper simplifies this by generating a small first run authorization routine. It prompts the user to switch to QuickBooks and approve access. If permission is not granted, your program terminates. Once the user approves, the wrapper records that the app has been authorized and does not prompt again.

---

## What are AppID and AppName

The values `QBAppID` and `QBAppName` identify your application to QuickBooks.  

Example values:

```
QBAppID   = 'Clarion.QBWrapper.Test'
QBAppName = 'Clarion QB Wrapper Test Tool'
```

- `QBAppID` is a developer defined identifier that should be unique to your product or tool. It is not assigned by Intuit.  
- `QBAppName` is shown in the QuickBooks authorization dialog when the user approves access.

You can set these in the global template prompts or assign them in code before opening a connection.

---

## Where to set AppID and AppName

- **Recommended**: Use the **ProSeriesQBWrapperGlobal** template prompts to enter AppID and AppName for the application.  
- **Alternatively in code**: set the values during startup before any request is sent.

Clarion example:

```clarion
! Set once during startup before connecting
QBConnectionManager.QBAppID   = 'YourCompany.YourProduct'
QBConnectionManager.QBAppName = 'Your Product Name'
```


---

## First run authorization flow

1. Your app starts with the **ProSeriesQBWrapperGlobal** extension enabled.  
2. The wrapper’s authorization routine runs if the app is not yet authorized.  
3. The routine instructs the user to switch to QuickBooks. On the Windows taskbar, the QuickBooks icon will blink to request attention.  
4. The QuickBooks authorization dialog appears.  
5. If the user approves, the wrapper records that authorization has been granted so the routine does not run again.  This indication is stored in the QuickBooks Settings File INI file named on the global extension tab (default **.\QBSettings.ini.** )
6. If the user denies or closes the dialog without approving, your program exits. This prevents confusing failures later that are caused only by missing permission.

The authorization record persists unless permissions are cleared or the environment changes in a way that causes QuickBooks to treat the app as different.

---

## Completing the authorization in QuickBooks

- Click the blue underlined link in the QuickBooks dialog to read the Intuit notice.  
- After opening that link, type **YES** in the approval box and continue.  
- If you try to type **YES** before clicking the link, QuickBooks blocks continuation.  
- Once approved, QuickBooks remembers the decision. You will not need to reauthorize unless:
  - The executable name or path changes  
  - Permissions are cleared by the user or admin  
  - QuickBooks or the company file is restored or migrated in a way that resets integrations

---

## How to review or change permissions later

In QuickBooks:

1. Open **Edit > Preferences**.  
2. Select **Integrated Applications**.  
3. Open the **Company Preferences** tab.  

You will see the list of authorized applications. From there you can remove access or adjust options, including whether the app can run when QuickBooks is not open.

---

## Tips for a smooth first run

- Make sure **QuickBooks Desktop** is installed and the correct company file is open.  
- Verify that **QBAppID** and **QBAppName** are set.  
- If the app seems to pause, check the Windows taskbar and bring QuickBooks to the front.  
- If the user denies access by mistake, re run the app and approve when prompted, or adjust permissions via Integrated Applications.

---

## Related guides

- [Before You Start Coding](before-you-start-coding.md)  
- [Using the XML Viewer](using-the-xml-viewer.md)  
- [Troubleshooting](troubleshooting.md)

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)
