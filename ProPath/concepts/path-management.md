---
title: "Path Management"
description: "Overview of how ProPath manages Main, System, and Other paths within Clarion applications."
keywords: ["ProPath", "Clarion", "path management", "datasets", "system path", "main path", "other paths"]
page_type: "concepts"
last_updated: "2025-10-06"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Path Management

ProPath centralizes control of all file and folder locations used by your application, including data files, INI and settings files, resource folders, and optional external paths.  

This ensures your application always knows where to find and store its files, regardless of Windows version, user privileges, or deployment environment.

---

## Path Categories

- **Main Data Path** - the base location for shared data files. Single user applications may also store settings here.  
- **System Data Path** - used for per user or per machine settings, INI files, and local cache data.  
- **Other Paths** - optional mapped folders pointing anywhere on the system or network for custom data or resources.

---

## Automatic Management

ProPath eliminates the need for hard coded path references. During startup, it automatically maps data and INI files into the correct locations based on template settings and current context.

When datasets are initialized, ProPath:

- Verifies that all required folders exist  
- Creates missing folders automatically  
- Resolves environment and system variables before use  

This approach provides reliable path control and simplifies application deployment and maintenance.

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
