[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# What's New in xSearch 5.0

**Find the records you need. See what you've tagged. Use the selection anywhere it matters.**

Version 5 expands xSearch's familiar Search-and-Tag workflow with better visual feedback, editable dialogs, reusable selections and a built-in export engine. Existing built-in class windows remain available, so developers can adopt the new features without replacing their working browse interfaces.

## See tagged records at a glance

**Optional tagged-row highlighting** adds a developer-selected background color across the entire tagged record in an ABC Browse LIST, rather than relying on the tag icon alone. It is particularly useful in browses with many columns. The original tag icons continue to work, and the LIST's normal selected-row highlighting is preserved.

To enable it, open the **Search this browse and tag what it finds** control template, select **Appearance**, check **Highlight tagged rows**, and choose the **Background colour**. The option is **off by default** and configured independently for each browse. No color customization is required to keep the familiar xSearch behavior. See [Browse Setup and LIST Icons](guides/browse-setup.md).

## Two complete sets of editable dialogs

Developers have three presentation choices: use the built-in windows without any TXA imports, import the **Classic** set, or import the **Modern** set. Both optional sets contain the same seven procedure names, and each window can also be imported individually. In Build 248, the two built-in export dialogs use traditional Classic styling.

The Modern set restyles Search Options, Fields to Search, Saved Tag Sets, Search Results and Found Record with a consistent flat interface, Segoe UI and navy headers. The **Modern Export Data and Export Column Settings** TXAs retain their existing flat appearance. The **Classic** export TXAs and the built-in export dialogs use traditional Clarion styling.

To override a built-in dialog, import a complete style with **Application > Template Utility** (one TXA containing all seven procedures), or import individual windows and mix styles. Enable **Use customized window procedures** on the global extension's **Windows** tab and select each replacement procedure. Blank selectors continue using the corresponding built-in window. The export class APIs and engine are unchanged. See [Customize xSearch Windows](guides/custom-windows.md) and [Export Dialogs](guides/export-dialogs.md).

Modern imported windows also use separate saved geometry from Classic windows. This prevents an older small Classic window size in the shared xSearch INI from clipping a larger Modern layout. Modern Search Results supports resizing with a minimum usable size.

## More ways to find, keep and use records

- **Better search control:** lookup-text matching, selectable search/field options, search history, saved named tag sets and optional SQL server pre-filtering.
- **Built-in export:** export tagged or browsed records to CSV, UTF-8 CSV, TSV, XML, JSON, HTML and Excel XLSX. Users can choose columns and rename headings when enabled.
- **Tag counts:** optionally display how many records are currently tagged in a control on the browse.
- **Print only the records you selected:** add **xSearch 5.0 for Report** to a report procedure, then use its normal Print button or menu. It can offer **"Print only tagged records? (2 tagged)"** and print the matching tagged subset, without repeating the search. The report's original range and sort still apply.
- **Run processes on tagged records:** the **xSearch 5.0 for Process** extension can restrict a process to the tagged selection, with configurable questions, counts and no-tags behavior.
- **Fomin Report Builder support:** the dedicated **xSearch 5.0 for Fomin Report Builder** procedure extension can print the tagged subset in supported Fomin **`RunTimeReport`** procedures. See [Tagged Reports and Processes](guides/tagged-reports-processes.md) and [Procedure Extensions](guides/procedure-extensions.md).
- **Language configuration:** choose English or Spanish or supply another language's Clarion translation source.
- **Predictable INI preferences:** store search settings, history, window geometry and export choices using a configured INI filename or a runtime global STRING variable.
- **Clearer setup and documentation:** descriptive application setup prompts, installation guidance and dedicated single-EXE and multi-DLL instructions.

## Make tagged records useful beyond the browse

The real value of tagging is **what users can do afterward**. Tag customers today, print a selected-customer report, perform a batch operation on just those customers, or export the selection. The report and process procedure extensions reuse the matching shared tag store. Their ordinary caller buttons do not require special xSearch logic. [See how to print or process tagged records](guides/tagged-reports-processes.md).

## Familiar behavior is preserved

Searching, icon-based tagging, Tag/Untag, Tag All, Untag All, Show Tagged and existing tag-storage choices remain available. All built-in class windows remain available, with the two export dialogs restyled to Classic in Build 248. Row highlighting and imported window procedures remain optional.

See [What xSearch Can Do](what-xsearch-can-do.md), [Using the Template](template-usage.md), and [Version History](version-history.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
