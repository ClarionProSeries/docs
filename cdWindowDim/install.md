---
title: "cdWindowDim - Installation"
summary: "Install cdWindowDim into the normal Clarion accessory folders."
description: "Install cdWindowDim into the normal Clarion accessory folders."
keywords: ["cdWindowDim", "Clarion", "Code Drop", "window dimming"]
page_type: "guide"
last_updated: "2026-11-18"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# cdWindowDim - Installation

When you run the installer for cdWindowDim, it locates valid Clarion installations on your computer and lets you choose which one to install the template for.

You can run the installer multiple times to install cdWindowDim into more than one version of Clarion. Each Clarion installation receives its own copy of the required files.

The installer sets up the template, library, runtime DLL, product image, documentation, and any included examples.

---

## Installed File Locations

By default, cdWindowDim follows the normal folder conventions used by Clarion third-party developers.

### Working Files

The working files are installed into the appropriate subfolders of the root accessory folder beneath your base Clarion installation folder.

For example:

```text
C:\Clarion12                           (base Clarion folder)
C:\Clarion12\accessory                 (root accessory folder)
C:\Clarion12\accessory\bin
    CDWindowDim.dll
C:\Clarion12\accessory\lib
    CDWindowDim.lib
C:\Clarion12\accessory\template\win
    CDWindowDim.tpl
C:\Clarion12\accessory\libsrc\win
    CDMsg_Source.txa
    CDMsg_External.txa
C:\Clarion12\accessory\images
    cdWindowDim270x90.png

C:\Clarion12\accessory\Documents\LANSRAD\cdWindowDim
    cdWindowDim.chm
```

### Example Files

If example applications are included, they are installed in the standard Clarion examples location under **Users\Public\Documents\SoftVelocity** so that they are available to any user profile.

For example:

```text
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory
    cdWindowDim                   (shortcut to product examples)
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD\cdWindowDim
    Example applications and supporting files
```

See [Template Registration](template-registration.md) and [Getting Started](getting-started/index.md) for the next steps.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

## Optional message helpers

The package `libsrc` folder provides `CDMsg_Source.txa` and `CDMsg_External.txa`. Import the Source definitions in one APP that implements the helpers; use External declarations only in other consuming APPs. See [Custom Colored Message Procedures](guides/custom-messages.md).

**Message helper utilities:** Install both `.txa` files into `accessory\libsrc\win`, not into `accessory\template\win`. The two utility entries in `CDWindowDim.tpl` import these optional colored MESSAGE helper procedures (or their external declarations) through Clarion's normal source-file search path.
