---
title: "Why Use ProPath"
description: "Explains why Clarion developers should use ProPath to manage data and INI file locations, prevent Windows data virtualization, and avoid elevation-related issues."
keywords: ["ProPath", "Clarion", "virtualization", "ProgramData", "UAC", "elevation", "user data", "paths", "INI files", "SetupBuilder", "Lindersoft"]
page_type: "concepts"
last_updated: "2025-10-06"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Why Use ProPath

The number one reason to use ProPath is that it gives you total control over where your data and settings files (such as .INI) are created.  That protects your application from problems that arise when the Windows operating system tries to **protect** the user from your program.

In an effort to protect system areas from unauthorized modification Windows operating systems introduced **data virtualization**.  Unfortunately, this can cause confusion for Clarion applications that store data or INI files inside the program folder.

When a non-elevated user writes to a protected location such as `C:\Program Files`, Windows silently redirects the write operation to a **virtual store** under:

```
C:\Users\<UserName>\AppData\Local\VirtualStore\
```

As a result, each user may end up with their own private copy of your application’s data or configuration files, often without realizing it.

This means that even standard programming techniques like shipping a data file with a set of lookup data can fail because when your program runs Windows will look in the virtual store location and see an empty file instead of finding the data that should be available.

---

## Avoiding Virtualization Problems

ProPath prevents this by ensuring that all data and INI files are stored in **Windows Standard Locations**, such as:

- `%ProgramData%` for shared data  
- `%AppData%` or `%LocalAppData%` for per-user settings  

By mapping these paths automatically during startup, ProPath eliminates hidden virtualized copies and guarantees consistent access to the same data between users.

You can also map file paths to other locations outside the protected areas, or to network drives for shared data.

This flexibility makes it easy to support both local and shared storage scenarios.

A common use of ProPath is to map data file locations to a network drive or share and then store individual user settings on the local PC.

---

## Understanding Elevation and UAC Behavior

Another common problem occurs when an application is run **elevated** (as Administrator) during or after installation.  This is quite common as users generally expect an option to run a program at the end of an installation.

It is important to realize that Windows treats elevated users as **separate security identities**.  
For example, *Charles (Administrator)* and *Charles (User)* are considered different accounts for file access and registry storage.

If your installer launches the program while still elevated, the initial configuration files and INI data are created in the Administrator’s profile. 

Later, when Windows re-launches the same program **non-elevated** from your shortcut, those files are invisible to the standard user, leading to “missing settings” or “first run repeating” issues.

### Using SetupBuilder to Avoid Elevation Conflicts
    
While it is possible to avoid this problem by not offering the user the option to run your program at the end of the install, that can result in an installation that does not meet user expectations as it requires them to hunt for your program to run it.

A better solution is to use <a href="https://www.lindersoft.com/" target="_blank" rel="noopener">SetupBuilder by Lindersoft</a> to create your installers.  SetupBuilder is a professional installation tool created by long-time Clarion developer Friedrich Linder.  

Unlike many installer systems, SetupBuilder provides a unique feature that allows developers to **launch their application non-elevated at the end of an elevated install**.

This small but important distinction prevents the newly installed program from running in the Administrator context.

The result is that your application’s initial INI files and data directories are created under the correct **non-elevated user account**, ensuring that:

- Paths initialized by ProPath point to the correct user’s environment  
- Configuration and datasets remain visible to that user in future sessions  
- You avoid the common “missing configuration after install” problem

For Clarion developers using ProPath, SetupBuilder offers a clean and reliable way to meet user expectations and deliver a proper first-run experience without conflicting elevation levels.

---

## How ProPath Solves It

ProPath’s startup sequence and path rules prevent these conflicts by:

- Always initializing paths under the correct user context  
- Separating shared and user-specific folders when needed  
- Helping you avoid writes to protected system areas  
- Using **First Deploy** and **First Run** logic to ensure clean initialization

By letting ProPath manage your file locations, you ensure data consistency, avoid UAC headaches, and eliminate the need for manual path correction after installation.

---

### Related Topics

- [Data vs. INI Storage](data-storage.md)  
- [First Deploy](first-deploy.md)  
- [First Run](first-run.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
