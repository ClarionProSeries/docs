
[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# vuFileTools - Installation

When you run the installer for **vuFileTools**, it locates valid Clarion installations on your computer and lets you choose which one to install the template for.

You can run the installer multiple times and install to multiple versions of Clarion without any problem. Each Clarion version receives its own complete vuFileTools setup, allowing independent updates or removals without affecting other versions.

The installer will set up separate folders, links to help files, and installed files as needed.

You can update or remove one version of vuFileTools without affecting any other installed copy.

---

## Secure Login window

The vuFileTools template includes an **Import vuFileTools Secure Login** utility. If you are upgrading from a release earlier than Build 210, see the [Secure Login import and migration instructions](secure-login.md) before rebuilding or replacing the DLL.

## Installed File Locations

By default, the installers follow the standards and guidelines for Clarion third-party developers.

### Working Files
The working files are installed into the appropriate subfolders of the **root accessory** folder beneath your **base** Clarion installation folder.  

For example:

```
C:\Clarion12                           (base Clarion folder)
C:\Clarion12\accessory                 (root accessory folder)
C:\Clarion12\accessory\bin
    vuFT5.dll
C:\Clarion12\accessory\lib
    vuFT5.lib
C:\Clarion12\accessory\template\win
    vuFileTools.tpl
C:\Clarion12\accessory\libsrc\win
    vuFTMsg_Source.txa
    vuFTMsg_External.txa
    vuFileToolsSecureLogin.txa

C:\Clarion12\accessory\Documents\LANSRAD\vuFileTools
    vuFileTools.chm
```

### Example Files

The example applications are installed into the appropriate subfolders of the standard Clarion examples location.

This location is in the **Users\Public\Documents\SoftVelocity** folder so that it is available to any user profile on the installation computer.

For example:

```
C:\Users\Public\Documents\SoftVelocity\Clarion12
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory
    vuFileTools                 (a shortcut link to quickly access the product examples)

C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD\vuFileTools
    vuFileToolsDemos.html       (notes about the demo programs)
    Demo Folders                (such as SingleExe or Multi-DLL)
```

Each demo folder contains the files relevant to that example application.

---

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

**Message helper utilities:** Install `vuFTMsg_Source.txa`, `vuFTMsg_External.txa`, and `vuFileToolsSecureLogin.txa` in `accessory\libsrc\win`, not the template directory. The `vuFileTools.tpl` utility entries import the optional colored MESSAGE helpers, their external declarations, and the Secure Login window using Clarion's normal source-file search path.