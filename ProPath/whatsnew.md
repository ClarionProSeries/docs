---
title: "Clarion ProPath - What's New"
summary: "New features and enhancements introduced in Clarion ProPath Version 5.0."
description: "Clarion ProPath Version 5.0 introduces major updates including CapeSoft Driver Kit support, SQLite and Firebird integration, Known Folder migration, and full documentation updates."
keywords: ["Clarion", "ProPath", "What's New", "Version 5", "Driver Kit", "SQLite", "Firebird", "Known Folders", "Documentation"]
page_type: "changelog"
last_updated: "2025-10-05"
---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)

# Clarion ProPath - What's New in Version 5.0

Version 5.0 of **ProPath** is a major update that expands database support, modernizes folder handling, and introduces a completely new documentation system.  

These changes ensure long-term compatibility with current and future versions of Windows and Clarion.

---

## New in This Release

### 1. Support for CapeSoft File Driver Kit
ProPath now fully supports the **CapeSoft File Driver Kit**  [https://www.capesoft.com/accessories/filedriverkitsp.htm](https://www.capesoft.com/accessories/filedriverkitsp.htm) enabling Clarion developers to take advantage of the latest database driver technologies while retaining the path and dataset management benefits of ProPath.

---

### 2. SQLite Support
ProPath 5 adds complete support for **SQLite**, including:

- **Single-database management** for applications using a single local data file.  
- **Multiple dataset management** for scenarios where maintaining multiple databases are needed for reference or archive purposes.  

All dataset folders and paths are managed automatically by ProPath.  Both direct path management or user creation/selection of databases at runtime are supported.

---

### 3. Firebird Support
ProPath 5 also introduces integrated support for **Firebird Embedded** databases 

- Works with both single-database and multi-dataset configurations.  
- Perfect for standalone or portable applications requiring compact, high-performance databases. 
- Automatically detects at runtime whether to connect to an embedded database or a Firebird server, based on the application’s connection settings.
- This flexibility makes it easy for developers to switch between local and server databases or to troubleshoot client databases without changing code or configuration.

---

### 4. Migration from CSIDL to Known Folders
ProPath has been updated to use **Microsoft’s Known Folder system**, replacing the now-deprecated **CSIDL** folder identifiers.  

This change is important because CSIDL support has been officially deprecated by Microsoft.  
As Windows 10 approaches end of life, this update ensures that your Clarion applications remain fully compatible with future Windows releases.

By using Known Folders, ProPath can now:
- Retrieve the location of any Known Folder dynamically.  
- Open any Known Folder directly through built-in code templates or class methods.  

This helps developers **future-proof** their applications and maintain smooth deployment on new systems.

---

### 5. Enhanced Class and Template Capabilities
Developers can now use ProPath classes or code templates to:
- Retrieve any Known Folder path directly.  
- Open Known Folders in Windows Explorer.  
  

These additions make ProPath even more flexible for both IDE-driven configuration and runtime customization.

---

### 6. New Documentation and GitHub Publication
ProPath 5 ships with **all-new documentation** written in Markdown format with  [ProHelp Studio](prohelpstudio.md).
The documentation is now hosted on **GitHub**, providing an always-up-to-date online reference and easier access for Clarion developers.

- Online documentation: [https://clarionproseries.github.io/docs/ProPath/](https://clarionproseries.github.io/docs/ProPath/)  
- Source repository: [https://github.com/ClarionProSeries/docs/tree/main/ProPath](https://github.com/ClarionProSeries/docs/tree/main/ProPath)

If the link above does not open in your help viewer, copy and paste this URL into your browser:
```
https://clarionproseries.github.io/docs/ProPath/
```
---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)
