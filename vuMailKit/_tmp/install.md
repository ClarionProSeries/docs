
[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# vuMailKit - Installation

When you run the installer for **vuMailKit**, it locates valid Clarion installations on your computer and lets you choose which one to install the template for.

You can run the installer multiple times and install to multiple versions of Clarion. Each Clarion version receives its own complete vuMailKit setup, allowing independent updates or removals without affecting other installed copies.

The installer sets up the template, import library, runtime DLL deployment files, and help links as needed.

---

## Installed File Locations

By default, the installer follows the normal standards used by Clarion third-party developers.

### Working Files

The working files are installed into the appropriate subfolders of the **root accessory** folder beneath your **base** Clarion installation folder.

For example:

```
C:\Clarion12                           (base Clarion folder)
C:\Clarion12\accessory                 (root accessory folder)
C:\Clarion12\accessory\bin
    vuMailKit.dll
C:\Clarion12\accessory\lib
    vuMailKit.lib
C:\Clarion12\accessory\template\win
    vuMailKit.tpl

C:\Clarion12\accessory\Documents\LANSRAD\vuMailKit
    vuMailKit.chm
```

### Example Files

The example applications are installed into the appropriate subfolders of the standard Clarion examples location.

This location is in the **Users\Public\Documents\SoftVelocity** folder so that it is available to any user profile on the installation computer.

For example:

```
C:\Users\Public\Documents\SoftVelocity\Clarion12
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory
    vuMailKit                 (a shortcut link to quickly access the product examples)

C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD\vuMailKit
    vuMailKitDemos.html       (notes about the demo programs)
    Demo Folders              (such as SingleExe or Multi-DLL)
```

Each demo folder contains the files relevant to that example application.

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)