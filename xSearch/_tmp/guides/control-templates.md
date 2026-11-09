[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [Multi-DLL](multi-dll.md)

# Search and Tag Control Templates

The toolbox first offers a browse-specific **xSearch** entry. Place that Search control on the window before looking for companion controls. The labels below explain what each button does; the template names are included for reference.

| Internal template | Button/function | Notes |
|---|---|---|
| **xSearch** | Search | Searches the chosen ABC browse and tags matching records |
| **xTagged** | Tag / Untag | Tags or untags the selected record; the button switches between Tag and Untag |
| **xTagAll** | Tag All | Tags records in the configured browse selection |
| **xUnTagAll** | Untag All | Clears tags from the configured tag store, including any shared selection |
| **xShowTagged** | Show Tagged | Switches the browse between all records, tagged records, and untagged records |
| **xExport** | Export | Creates output files when export support is enabled in the global extension |

The individual control templates appear after **xSearch** is placed because they depend on the Search control template. Their existence is not controlled by the primary Search button's Actions prompts.

The xSearch extension can add matching popup menu commands for companion controls actually present on that browse. Merely placing Search does not automatically produce every companion button or menu command.

The names **xTagged**, **xTagAll**, etc. are stable internal symbols. The toolbox display descriptions may differ from the button captions; the internal symbols remain unchanged.

**Tip:** After placing controls, edit the xSearch extension through the procedure's **Extensions** list. Double-clicking a Window Designer button opens embeds, whereas right-clicking it and choosing **Actions** opens template control settings.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [Multi-DLL](multi-dll.md)
