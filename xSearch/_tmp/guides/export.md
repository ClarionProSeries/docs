[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)

# Export Records

xSearch 5 provides an optional export engine for creating files from your application's data. Available formats include CSV, UTF-8 CSV, tab-separated text, XML, JSON, HTML, and Excel XLSX. The XLSX writer does not require Microsoft Excel to be installed.

To add export functionality, open **Global Extensions > xSearch > Export** and select **Include the export engine** in the application where the xExport control will be used. In Window Designer, place the main xSearch Search control on the desired browse, then add the **xExport** control template where appropriate.

The xExport control template has separate **Export** and **Formats** tabs. Choose **Only the tagged records**, **Everything the browse would show**, or **Just the page on screen**. The export dialog also allows column selection and renaming when enabled. The exported headings begin with the LIST column headings supplied by your application. Selecting Spanish translates the xExport dialog text but does not automatically translate your own browse's column headings. A visible text column that also contains a tag icon, such as Company, is included by default. Hidden columns remain unselected by default.

**Tagged-row highlighting and export:** Export must read the LIST data fields, not its extra color LONGs. The xSearch 5.0 exporter preserves the configured export columns and refreshes their field indices without erasing the column list. The mapping is shared across output formats. Because every format uses the shared column mapping, verify other enabled formats with your application data as part of release testing.

**Text output:** Tab-separated values (TSV) produces a plain-text file with tab delimiters, useful for importing into another application. xSearch does not currently offer a separate human-formatted TXT export for pasting into an email body.

## Remembered settings and INI location

When **Remember the choices between runs** is enabled on the xExport control template, export settings are saved per browse in the **Global INI file** configured on xSearch's Tag Storage tab, under a separate xsExport_&lt;procedure&gt; section. These settings include chosen columns, renamed headings, output format and destination folder. They do not come from the tag file. The file is written when an export completes successfully.

A simple filename such as xQSearch.ini is resolved against the directory containing the running EXE. A developer may also provide an absolute path or use a Clarion runtime variable (for example, !MyIniPath) to supply the complete filename. Choose a writable location for installed applications. See [INI Files and Remembered Settings](ini-settings.md) for all saved settings, pathname rules and multi-DLL initialization.

## When no records qualify

Before opening the Export Data dialog, xSearch checks whether at least one record is available for the selected scope. If not, it displays **Nothing to Export** (or **Nada para exportar** in Spanish) and does not create a file. The message distinguishes an empty tagged set, a filtered browse with no qualifying records, and an empty current LIST page. The check uses the browse's selection rules, not just the number of tags in the tag store.

An empty selection does not change the browse's previous Show Tagged mode; xSearch restores that mode after the check. Only one record is probed for the full-browse modes, so it does not count the entire file. Files are still generated normally whenever records qualify.

You can customize both export dialogs using Clarion Window Designer. Choose **Application > Template Utility > Classic** or **Modern** for either individual export window, or choose **Classic - all seven xSearch windows** or **Modern - all seven xSearch windows** to import a complete set. **Export Data and Export Column Settings have the same existing modern layouts in both sets.** On **xSearch 5.0 - Application Setup > Windows**, select the imported procedures. Unselected dialogs continue to use the built-in versions. Preserve the original control `USE` names and procedure prototypes. See [Customize xSearch Windows](custom-windows.md).

If export is used in a multi-DLL application, coordinate the required global export declarations across the APPs involved, just as for other shared xSearch resources.

See [Using xSearch in Multi-DLL Applications](multi-dll.md) for the normal APP setup and [Control Templates](control-templates.md) for adding browse controls.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)
