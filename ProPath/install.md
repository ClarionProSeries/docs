---
title: "Clarion ProPath - Installation"
summary: "When you run the installer for Clarion ProPath it will locate valid Clarion installations on your computer and let you choose which one to install the template for."
description: "When you run the installer for Clarion ProPath it will locate valid Clarion installations on your computer and let you choose which one to install the template for."
keywords: ["Clarion", "install", "ProPath", "installation", "installer", "templates", "setup", "accessory"]
page_type: "guide"
last_updated: "2025-10-05"
---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)

[![ProPath logo](assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Clarion ProPath - Installation

When you run the installer for **Clarion ProPath**, it locates valid Clarion installations on your computer and lets you choose which one to install the template for.

You can run the installer multiple times and install to multiple versions of Clarion without any problem. Each Clarion version receives its own complete ProPath setup, allowing independent updates or removals without affecting other versions.

The installer will set up separate folders, links to help files, and installed files as needed.

You can update or remove one version of ProPath without affecting any other installed copy.

---

## Installed File Locations

By default, the installers follow the standards and guidelines for Clarion third-party developers.

### Working Files
The working files are installed into the appropriate subfolders of the **root accessory** folder beneath your **base** Clarion installation folder.  

For example:

```
C:\Clarion12                           (base Clarion folder)
C:\Clarion12\accessory                 (root accessory folder)
C:\Clarion12\accessory\template\win
    ProPath.tpl
    ProPath.tpw
C:\Clarion12\accessory\libsrc\win
    ProPath.inc
    ProPath.clw
    ProPathChangeDataSet.txa
    ProPathSelectPath.txa

C:\Clarion12\accessory\Documents\LANSRAD\ProPath
    ProPath.chm
```

### Example Files

The example applications are installed into the appropriate subfolders of the standard Clarion examples location.

This location is in the **Users\Public\Documents\SoftVelocity** folder so that it is available to any user profile on the installation computer.

For example:

```
C:\Users\Public\Documents\SoftVelocity\Clarion12
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory

    ProPath                 (a shortcut link to quickly access the product examples)

C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD\ProPath
    ProPathDemos.html       (notes about the demo programs)
    Demo Folders            (folders such as Demo1, Demo2, etc.)
```

Each demo folder contains the files relevant to that example application.

---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)
