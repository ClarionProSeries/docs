---
title: "Clarion QuickBooks Wrapper - Installation"
summary: "Install the Clarion QuickBooks Wrapper templates, classes, and examples into one or more Clarion versions."
description: "The installer locates your Clarion installations and lets you choose where to install the Clarion QuickBooks Wrapper components. You can install to multiple Clarion versions and update or remove them independently."
keywords: ["ClarionQBWrapper", "Clarion", "installation", "QuickBooks", "QBXML", "templates", "classes", "examples"]
page_type: "guide"
last_updated: "2025-10-30"
---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)

# Clarion QuickBooks Wrapper - Installation

When you run the installer for the **Clarion QuickBooks Wrapper**, it searches for valid Clarion installations on your computer and lets you choose which ones to target.

You can run the installer multiple times and install to multiple Clarion versions. The installer sets up separate folders, help links, and example content for each version. You can update or remove one installation without affecting others.

## Installed File Locations

By default, the installer follows the standard Clarion third-party layout.

#### Working files (beneath your Clarion base folder)

For example:

C:\Clarion12 *(base folder)*  
C:\Clarion12\accessory *(root accessory folder)*

C:\Clarion12\accessory\bin  
- **ProSeriesQBWrapperV2.dll**

C:\Clarion12\accessory\lib  
- **ProSeriesQBWrapperV2.lib**

C:\Clarion12\accessory\libsrc\win  
- **PS_ProSeriesQBWrapper.equ**  
- **PS_ProSeriesQBWrapper.inc**  
- **PS_ProSeriesQBWrapper.clw**

C:\Clarion12\accessory\template\win  
- **PS_ProSeriesQBWrapper.tpl**  
- **PS_ProSeriesQBWrapper.tpw**

C:\Clarion12\accessory\Documents\LANSRAD\ClarionQBWrapper  
- **ClarionQBWrapper.chm**

#### Example files and demos

Examples are installed under the shared Public Clarion examples path so all user profiles on the machine can access them.

For example:

C:\Users\Public\Documents\SoftVelocity\Clarion12 *(version base folder)*  
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory *(accessory base folder)*

- **ClarionQBWrapper** *(shortcut to the product examples)*

C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD\ClarionQBWrapper *(product folder)*  
- **Multiple ABC and Legacy demos and sample apps**, including the **Code Checker Console**.

Each demo folder contains the files for that sample application.

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)
