---
title: "Clarion ProPath - Overview and Features"
description: "Overview of what Clarion ProPath does and how it simplifies path and dataset management in Clarion applications."
---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)

[![ProPath logo](assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Clarion ProPath - Overview and Features

**ProPath** is a template and class library that automates file-path and data management for Clarion developers, making the handling of INI and data files painless.

It eliminates hard-coded paths, simplifies deployment, and helps you ensure that application data is stored in the correct locations for each user and system to meet Windows standards and guidelines.

---

## What ProPath Does

ProPath automatically determines and manages folder locations for your Clarion program at runtime.  It uses standard Windows folder conventions (CSIDL/Special Folder IDs) and supports single or multiple datasets.

When your application starts, ProPath:
- Creates data and settings folders if they do not exist  
- Manages INI files and configuration storage automatically  
- Handles “first run” and version upgrade scenarios seamlessly  
- Provides template-driven setup for common path configurations  
- Exposes a class API for developers who need programmatic control  

---

## Why You’ll Use ProPath

- **No more virtualized files** - ProPath helps you ensure your files are in the right locations.  
- **No more hard-coded paths** - ProPath resolves all folder references dynamically.  
- **Simplified deployment** - Your installers no longer need to create folder structures manually.  
- **Supports multiple datasets** - Separate configuration and runtime data cleanly.  
- **Portable-ready** - Works equally well for USB and local installations.  
- **Template-driven setup** - Configure everything in the IDE without coding.  
- **Class-based control** - Access ProPath behavior directly from your code when needed.  

---

## Common Use Cases

- Applications needing user-specific data folders (AppData, ProgramData, etc.)  
- Systems using separate datasets for configuration vs. runtime data  
- Portable Clarion applications that must run from any location  


---

## Next Steps

Once you understand what ProPath does, you can set it up in just a few minutes.

To get started:
1. Review the [Requirements](requirements.md).  
2. Follow the [Installation Instructions](install.md).  
3. Learn how to [Register the Template](template-registration.md).  
4. See [Using the Template in Your Application](template-usage.md).  

---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)
