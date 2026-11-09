---
title: "xSearch - Installation"
summary: "Install xSearch into the standard Clarion accessory folders."
description: "Clarion ProSeries installation layout for xSearch template, class support and examples."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "ABC Browse", "search", "tagging"]
page_type: "guide"
last_updated: "2026-11-07"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# xSearch - Installation

When you run the installer for xSearch, it locates valid Clarion installations on your computer and lets you choose which one to install the template for.

You can run the installer multiple times to install xSearch into more than one version of Clarion. Each Clarion installation receives its own copy of the xSearch files.

The installer sets up the template, class support files, window-import files, translations, icons, documentation, and any included examples.

---

## Installed File Locations

By default, xSearch follows the normal folder conventions used by Clarion third-party developers.

### Working Files

The working files are installed into the appropriate subfolders of the root accessory folder beneath your base Clarion installation folder.

For example:

```text
C:\Clarion12                                  (base Clarion folder)
C:\Clarion12\accessory                        (root accessory folder)
C:\Clarion12\accessory\template\win
    xsearch.tpl
C:\Clarion12\accessory\libsrc\win
    xsearch.inc
    xsearch.clw
    xsExport.inc
    xsExport.clw
    xSearch_EN.trn
    xSearch_ES.trn
    xSearch_XX.trn
    xSearchClassicAllWindows.txa
    xSearchAskSearch.txa
    xSearchAskFields.txa
    xSearchAskTagSets.txa
    xSearchShowResults.txa
    xSearchShowMatched.txa
    xSearchExportData.txa
    xSearchExportColumn.txa
    xSearchModernAllWindows.txa
    xSearchModernAskSearch.txa
    xSearchModernAskFields.txa
    xSearchModernAskTagSets.txa
    xSearchModernShowResults.txa
    xSearchModernShowMatched.txa
    xSearchModernExportData.txa
    xSearchModernExportColumn.txa

C:\Clarion12\accessory\lib\win
    winxpmnf.res

C:\Clarion12\accessory\images
    Info.ico
    Search2.ico
    X1.ICO
    xSearch270x90.gif
    xSrchAnd.ico
    xSrchExi.ico
    xSrchNul.ico
    xSrchOr.ico
    xSrchQBE.ico
    xSrchRun.ico
    xSrchSrc.ico
    xSrchTag.ico

C:\Clarion12\accessory\Documents\LANSRAD\xSearch
    xSearch.chm
```

The resource destinations are important:

- **Template:** `Source/Template/xsearch.tpl` installs to `accessory\template\win`.
- **Classes, translations, and all 16 Classic/Modern import TXAs:** `Source/Libsrc/*` install directly to `accessory\libsrc\win`. There are no separate style subfolders in Clarion.
- **Icons and banner:** all 12 files in `Source/Images/*` install to `accessory\images`.
- **Legacy manifest resource:** `Source/Lib/winxpmnf.res` installs to **`accessory\lib\win`**, *not* `libsrc\win`.
- **Compiled help:** `xSearch.chm` installs under `accessory\Documents\LANSRAD\xSearch` once the CHM has been built.

`winxpmnf.res` is needed only if the optional legacy Windows XP manifest setting is used. The template links that resource by name; its installed location is `lib\win`.

The source distribution includes the Markdown manual and CHM build inputs; an installer should only promise the CHM if it has actually been compiled and packaged. No separate xSearch runtime DLL is required.

### Example Files

When example applications are included, the installer places them in the standard Clarion examples location under **Users\Public\Documents\SoftVelocity**, where they are available to all users of the computer.

For example:

```text
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory
    xSearch                         (shortcut to the product examples)
C:\Users\Public\Documents\SoftVelocity\Clarion12\accessory\LANSRAD\xSearch
    Demo applications and supporting files
```

Each demonstration folder contains the files relevant to that application.

For the next steps, see [Registering the Template](template-registration.md) and [Getting Started](getting-started/index.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
