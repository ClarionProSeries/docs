
[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)

# ProTOML - Installation

When you run the installer for ProTOML, it locates valid Clarion installations on your computer and lets you choose which one to install the template for.

You can run the installer multiple times and install to multiple versions of Clarion. Each Clarion version receives its own complete ProTOML setup, allowing independent updates or removals without affecting other installed copies.

The installer sets up the template, class support files, import library, runtime DLL deployment files, documentation, and examples.

---

## Installed File Locations

By default, the installer follows the normal standards used by Clarion third-party developers.

### Working Files

The working files are installed into the appropriate subfolders of the root accessory folder beneath your base Clarion installation folder.

For example:

```text
C:\Clarion12                           (base Clarion folder)
C:\Clarion12\accessory                 (root accessory folder)
C:\Clarion12\accessory\bin
    ProTOML.dll
C:\Clarion12\accessory\lib
    ProTOML.lib
C:\Clarion12\accessory\template\win
    ProTOML.tpl
C:\Clarion12\accessory\libsrc\win
    ProTOML_MAP.clw
    ProTOMLClass.equ
    ProTOMLClass.inc
    ProTOMLClass.clw
    ProTOMLRaw.equ
    ProTOMLRaw.inc
    ProTOMLRaw.clw

C:\Clarion12\accessory\Documents\LANSRAD\ProTOML
    ProTOML.chm
```

### Example Files

The example applications are installed into the appropriate subfolders of the standard Clarion examples location.

This location is in the Users\Public\Documents\SoftVelocity folder so that it is available to any user profile on the installation computer.

For example:

```text
C:\Users\Public\Documents\SoftVelocity\Clarion12
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory
    ProTOML                    (a shortcut link to the product examples)

C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD\ProTOML
    Demo applications and supporting files
```

Each demo folder contains the files relevant to that example application.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)