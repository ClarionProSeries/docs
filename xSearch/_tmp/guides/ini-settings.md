[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)

# INI Files and Remembered Settings

On **xSearch 5.0 - Application Setup > Tag Storage**, the **Global INI file** setting names the INI file used for xSearch preferences. The default filename is xQSearch.ini. xSearch and xExport share this file, with separate sections for each browse and type of setting. The application's own Clarion INI manager is not changed.

## What is remembered

| Settings | Where they are stored |
|---|---|
| Search options and matching choices | Configured xSearch INI, by browse procedure |
| Field selections and search history | Same INI, in browse-specific sections |
| xSearch dialog positions | Same INI, in window-specific sections |
| Export format, folder, options, chosen columns, renamed headings and picture choices | Same INI, in a separate xsExport_&lt;procedure&gt; section, when **Remember the choices between runs** is enabled |
| Actual record tags | In the chosen tag store, **not** in the INI |
| Saved named tag sets | In their separate tag-set files, **not** in the INI |

The INI is normally created or changed when a setting is written, not simply because you open the global template extension. Export preferences are written after a successful export, when remembering choices is enabled.

## Classic and Modern window sizes

The five redesigned **Modern** imported windows have their own xSearch saved window-geometry entries. This allows the larger Modern dialogs to open at suitable sizes even when the INI already contains the positions and smaller sizes of the **Classic** or built-in windows. The search and export settings themselves remain shared; switching layouts does **not** require clearing your search history, field choices or export preferences.

| Dialog | Original / Classic geometry key | Modern geometry key |
|---|---|---|
| Search Options | `InStrWindow` | `InStrWindowModern` |
| Fields to Search | `FieldsWindow` | `FieldsWindowModern` |
| Saved Tag Sets | `TagSetsWindow` | `TagSetsWindowModern` |
| Search Results | `ResultsWindow` | `ResultsWindowModern` |
| Found Record | `ResWindow` | `ResWindowModern` |

Modern Search Results has a minimum usable window size and resizes its list and footer controls as the window changes. The export dialogs retain fixed geometry behavior; Build 248 changes their Classic presentation without adding Modern-specific export geometry keys. See [Customize xSearch Windows](custom-windows.md).


## Choose the filename and location

| Global INI file entry | Meaning |
|---|---|
| xQSearch.ini | A simple filename, stored beside the running EXE |
| Settings\\xQSearch.ini | A relative subfolder under the EXE directory; the folder must exist and be writable |
| C:\\MyAppData\\xQSearch.ini | Use that explicit absolute path |
| \\\\Server\\Share\\xQSearch.ini | Use that explicit UNC network path, subject to permissions |
| !MyIniPath | Read the current filename from the global STRING variable MyIniPath when a browse initializes |

For xSearch's **Global INI file** prompt, a leading ! names a *global STRING variable* containing the filename. For example, !GLO:MyINI expects a global variable named GLO:MyINI. xSearch keeps a reference to the variable and **reads its value when a browse initializes**. Thus the application can assign the path after global startup, provided it does so before the first xSearch browse opens. xSearch resolves the current value without changing the variable or creating missing directories.

This deferred-reference form expects an addressable global STRING variable, not a function call or temporary string expression. To compute the path, assign the result to a global STRING variable and use ! followed by its name. The variable must remain valid for the lifetime of the owning application or DLL.

A bare filename or EXE-relative path is convenient for development. For an installed application whose EXE folder is protected, supply a writable full pathname, for example a location chosen by your application under the current user's application-data directory. xSearch does not require any additional path-management component.

Windows also recognizes drive-relative paths such as C:settings.ini and root-relative paths such as \\settings.ini. xSearch passes those explicit forms through to Windows. Because their interpretation depends on the process environment, a full absolute path is preferable when the location must be unambiguous.

## Multi-DLL applications

The **owning APP** (normally the Data DLL for shared xSearch globals) configures the filename. The xSearch class and any xExport control obtain the resolved name from that same global object. A runtime variable should be global and accessible in the owning APP, initialized before the first xSearch browse is opened. It does **not** need to have its final value when the owning DLL first initializes xSearch. The path is resolved against the **main running EXE**, not against an individual DLL's directory.

## Troubleshooting

- **No INI appeared:** Complete an operation that writes preferences, and verify that remembering choices is enabled where applicable. Check the actual configured pathname and folder permissions.
- **The INI appeared somewhere unexpected:** Check the configured full filename, including any runtime variable. A bare filename is resolved beside the EXE; a full pathname is used as supplied.
- **A column selection keeps returning:** Export choices are remembered by browse procedure. Restore the desired column checkbox and complete an export to save the selection.
- **The INI filename did not change export choices:** Make sure the variable has been initialized before opening the browse and that the chosen folder is writable. For advanced diagnosis, xGSearch.GetIniName() returns the filename in use after browse initialization.
- **The path points to a folder but no INI appears:** Verify that the complete filename, not just a folder, is supplied, and that the folder already exists and is writable.

For data-tag persistence, see [Tag Storage Choices](tag-storage.md). For export behavior, see [Export Records](export.md).

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)
