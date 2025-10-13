---
title: "Clarion ProPath - Templates"
description: "Complete reference for Clarion ProPath templates including registry, global, extension, and grouped code templates."
keywords: ["Clarion", "ProPath", "templates", "extension", "code templates", "explore", "first run", "deploy", "change dataset"]
page_type: "reference"
last_updated: "2025-10-08"
---

[Home](../index.md) | [Templates](index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Clarion ProPath - Templates

The **ProPath** template set provides global, extension, and code templates that manage file paths, datasets, and deployment behavior in Clarion applications.

Each template can be added through the **Global Extensions**, **Procedure Extensions**, or **Embed Points** dialogs within the Clarion IDE.  

This page lists all available templates and groups code templates by function for easier reference.

---

## Registry Template

This is the root template entry that appears in the Clarion registry.

| Registry Name | Display Name |
|:---|:---|
| **PSProPathABC** | ProSeries ProPath 5.0 for ABC |

---

## Global Extension Template

Added under Global Extensions.

| Template Name | Description |
|:---|:---|
| **PSProPathGlobal** | ProSeries ProPath 5.0 Global Support. Initializes ProPath and sets up dataset management for the application. |

---

## Procedure Extension Templates

Added under Procedure Extensions.

| Template Name | Description | Requires |
|:---|:---|:---|
| **PSProPathChangeDataSet** | Change Data Set Support. Allows the user to switch active datasets at runtime. | PSProPathGlobal |
| **PSProPathFirstRun** | First Run Support. Handles folder creation, version tracking, and initialization during first launch. | PSProPathGlobal |

---

# Code Templates by Function

The following code templates are grouped by their purpose in the ProPath system.  
Use this section to find the code template matching the task you want to automate.

---

## Explore Folders

Open ProPath managed folders directly in Windows Explorer.

| Code Template | Description | Requires |
|:---|:---|:---|
| **PSProPathExploreFolderMAIN** | Opens the MAIN data folder. | PSProPathGlobal |
| **PSProPathExploreFolderSYSTEM** | Opens the SYSTEM data folder. | PSProPathGlobal |
| **PSProPathExploreFolderOTHER** | Opens the OTHER data folder. | PSProPathGlobal |
| **PSProPathExploreKnownFolder** | Opens a Windows known folder (e.g., Documents or AppData). | PSProPathGlobal |

---

## First Run Actions

Provide the logic used by the First Run process and related dialog actions.

| Code Template | Description | Requires |
|:---|:---|:---|
| **PSProPathFirstSAVE** | Commits the First Run selections and continues program startup. | PSProPathFirstRun |
| **PSProPathFirstCANCEL** | Cancels First Run and discards pending changes. | PSProPathFirstRun |

### Folder Selection Dialogs

| Code Template | Description | Requires |
|:---|:---|:---|
| **PSProPathMAINFileDialog** | Displays a folder selection dialog for the MAIN path. | PSProPathFirstRun |
| **PSProPathSYSTEMFileDialog** | Displays a folder selection dialog for the SYSTEM path. | PSProPathFirstRun |

---

## Deploy On Demand

Trigger deployment of data groups or datasets at runtime.

| Code Template | Description | Requires |
|:---|:---|:---|
| **PSProPathDeployOnDemandALL** | Deploys all data groups. | PSProPathGlobal |
| **PSProPathDeployOnDemandMAIN** | Deploys MAIN data groups. | PSProPathGlobal |
| **PSProPathDeployOnDemandSYSTEM** | Deploys SYSTEM data groups. | PSProPathGlobal |
| **PSProPathDeployOnDemandONE** | Deploys a single group. | PSProPathGlobal |
| **PSProPathDeployOnDemandDataSet** | Deploys a single dataset. | PSProPathGlobal |

---

## Change Dataset

Support for dataset switching operations, including SecWin integration.

| Code Template | Description | Requires |
|:---|:---|:---|
| **PSProPathCallChangeDataSetProcedure** | Calls the Change DataSet procedure to switch active datasets. | PSProPathGlobal |
| **PSProPathPostSecWinChangeDataSet** | Post SecWin WnChangeDataSet hook for applications using SecWin security. | PSProPathGlobal |

---

## Utilities

General helper templates that support path management and runtime display.

| Code Template | Description | Requires |
|:---|:---|:---|
| **PSProPathResetFolders** | Resets all folder selections to their defaults. | PSProPathGlobal |
| **PSProPathUpdateWindowTitle** | Updates the window title with the active dataset name or path. | PSProPathGlobal |

---

# Summary

- The **Global Template** must always be added first; all other templates depend on it.  
- **Extension Templates** expand ProPath features such as First Run or dataset switching.  
- **Code Templates** automate common actions, grouped here by function for quick lookup.  
- ProPath integrates seamlessly with both single EXE and multi-DLL Clarion applications.

For implementation details, see the [Template Usage](../template-usage.md) page.

---

[Home](../index.md) | [Templates](index.md) | [Classes](../classes/index.md)
