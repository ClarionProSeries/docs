---
title: Clarion ProPath Demo 26 - Firebird Multiple Data Sets
description: Demonstrates managing multiple embedded Firebird datasets with Clarion ProPath.
tags: [Clarion ProPath, Clarion, Firebird, dataset, demo]
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

## Clarion ProPath Demo 26 - Overview

This example demonstrates how Clarion ProPath manages **multiple embedded Firebird datasets**, each with its own database and configuration files.

### Key Features

- Each dataset maintains its own Firebird database within a managed MAIN folder  
- ProPath dynamically defines and maintains each Firebird database path  
- Database and INI files are automatically created for each dataset on first run if missing  
- Connection strings use the **PROPATH:** token, allowing ProPath to control path resolution  
- Supports automatic creation of all required dataset folders and database files  
- INI and configuration files are stored in the **SYSTEM** folder  
- **Explore** template allows users to open the active Firebird dataset folder directly in Windows Explorer  

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
