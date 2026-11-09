[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# xSearch - Template Usage

xSearch uses **one application-level global extension and one or more browse-specific control templates**. The Search control provides searching and tagging for an ABC Browse. Optional companion controls provide Tag/Untag, Tag All, Untag All, Show Tagged, and Export functionality. Add only the controls your browse needs.

## Add the global extension

1. Open the APP containing the browse.
2. Go to **Global Extensions > Insert**.
3. Select **xSearch 5.0 - Application Setup**.
4. Use **Start Here** for the initial steps, then review **Tag Storage**, **Tag File**, **SQL**, **Export**, **Windows**, and **Language** as needed.
5. For a simple single-EXE browse using Local Queue, no shared tag-file entry is needed. Local Queue tags last only until that browse closes; Global Queue tags survive browse closure but not application exit.

On **Tag Storage**, the **Global INI file** setting stores search, window and export preferences. A bare filename resolves beside the EXE, or the developer can specify a writable full pathname or a variable prefixed by !. See [INI Files and Remembered Settings](guides/ini-settings.md).

For multi-DLL applications, configure shared definitions in the Data DLL and in the APP containing the browse. See [Multi-DLL Setup](guides/multi-dll.md).

## Place the Search control

1. Open an ABC Browse procedure in **Window Designer**.
2. In **Control Templates > xSearch**, choose the Search control associated with that browse.
3. Place the Search button on the window.
4. Right-click the button and select **Actions** to open its template prompts.
5. Select the primary file and LIST control, choose the tag-icon field, and configure tag storage.
6. On **Tag storage**, choose where tags will be kept. For Local Queue, Global Queue, or External File, select the unique record **field** in **Tag store settings...** (for example, CUS:CustNumber); do not select a KEY name. **This File** instead requires a tag field and corresponding key in the data dictionary. See [Choosing Tag Storage](guides/tag-storage.md) for the differences.

For a tag icon beside an existing column, select that column's field and enable **Transparent** icon display in the LIST Formatter, **not Normal**. Transparent avoids the visible icon bounding box on otherwise untagged rows. The field must already be part of the LIST; see [Browse Setup and LIST Icons](guides/browse-setup.md).

To make tagged records stand out across the whole LIST, open the Search control's **Appearance** tab, check **Highlight tagged rows**, and choose the **Background colour**. This per-browse option defaults to off and preserves the normal selected-row highlight. See [Browse Setup and LIST Icons](guides/browse-setup.md).

For editable dialog windows, import a complete **Classic** or **Modern** set using **Application > Template Utility** (or import individual windows), then select procedures on the global **Windows** tab. The original class windows remain the default. See [Customize xSearch Windows](guides/custom-windows.md).

## Add optional controls

Once Search has been placed, companion xSearch control templates become available. Add the buttons needed by the browse. See [Search and Tag Controls](guides/control-templates.md).

## Print reports or run processes using tagged records

After searching and tagging, add **xSearch 5.0 for Report** to an appropriate Clarion report procedure, or **xSearch 5.0 for Process** to a process procedure. Match the tag-store method and unique record field to the tagging browse. You can then call the report or process through its usual menu or button; the xSearch procedure extension can ask whether to work with the tagged subset. The call button itself does not require special xSearch code. See [Reports and Processes Using Tags](guides/tagged-reports-processes.md).

**Fomin Report Builder:** On a supported Fomin `RunTimeReport` procedure, use **xSearch 5.0 for Fomin Report Builder** to make its report operate on tagged records. The ordinary report and process extensions are for their respective Clarion procedure types. The two other procedure extensions, **alternate window** and **alternate export window**, are already included when you import xSearch's editable Classic or Modern windows. See [All Five Procedure Extensions](guides/procedure-extensions.md).

## Changing the settings later

In the application tree, right-click the browse procedure and choose **Extensions**. Double-click **Search this browse and tag what it finds** to reopen its template settings without returning to Window Designer.

For step-by-step examples, see [Single-EXE Setup](guides/single-exe.md) or [Multi-DLL Setup](guides/multi-dll.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
