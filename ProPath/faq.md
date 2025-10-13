---
title: "Clarion ProPath - Frequently Asked Questions"
description: "Common questions, troubleshooting tips, and clarifications for Clarion ProPath."
keywords: ["Clarion", "ProPath", "FAQ", "questions", "troubleshooting", "paths", "datasets", "Clarion templates"]
page_type: "support"
last_updated: "2025-10-05"
---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)

# Clarion ProPath - Frequently Asked Questions

This page answers common questions about **ProPath** setup, configuration, and runtime behavior.  
For additional help or updates, visit the [Clarion ProSeries Website](https://www.clarionproseries.com).

---

## General

### Q: What is ProPath?
A: ProPath is a Clarion template and class library that automates file path and dataset management.  
It ensures your data and INI files are placed in correct, predictable folders without hard-coded paths.

### Q: Which Clarion versions are supported?
A: ProPath 5 supports Clarion 9.x, 10, 11.x, and 12.  
Older versions may work but are not officially maintained.

---

## Installation and Setup

### Q: Where does ProPath store my INI file?
A: By default, ProPath stores the INI file in the user's MAIN Data folder.  
This can be overridden in the **ProPath Global** template or programmatically through the class interface.

### Q: Can ProPath manage multiple dataset folders?
A: Yes. ProPath can manage multiple datasets if that feature is enabled.  

---

## Troubleshooting

### Q: My app cannot find the database after deployment. Why?
A: Check that the dataset folder exists on the target system.  
You can use the **Explore Folder** template to confirm that ProPath is resolving paths correctly.  

Also make sure that your program was not run from an elevated installer unless it was launched non-elevated (see notes in concepts).

### Q: Does ProPath work with Firebird or SQLite?
A: Yes. ProPath is driver agnostic and works equally well with Firebird, SQLite, and other Clarion supported data drivers.

---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)
