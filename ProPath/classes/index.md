---
title: "Clarion ProPath - Classes"
description: "Reference for Clarion ProPath classes with links to per-class pages."
keywords: ["Clarion", "ProPath", "classes", "reference", "methods", "properties", "dataset", "paths"]
page_type: "reference"
last_updated: "2025-10-08"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Clarion ProPath - Classes

The ProPath class library provides the runtime foundation that powers dataset and path management for ProPath templates.

Use this index to jump to the per-class pages.

---

## Core Classes

| Class Name | Purpose |
|:---|:---|
| [ProPathFolderClass](ProPathFolderClass.md) | Manages dataset folder rules, base path selection, registry and INI mapping, and first run triggers. |
| [ProPathFileClass](ProPathFileClass.md) | Inherits from ProPathFolderClass and resolves full file names for INI and data files. |

---

## Shared Notes

- A global instance of ProPathFolderClass is created by the ProPath templates.  
- Methods can be called directly for advanced control without changing template settings.  
- Queue based structures are used to manage folder level definitions and export settings.

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
