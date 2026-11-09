[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [Multi-DLL](multi-dll.md)

# Browse Setup and LIST Icons

## Main Search control

The first xSearch control template is browse-specific. On a window containing multiple ABC browse templates, verify that you choose the entry for the intended browse. Place it in the Window Designer.

- **Primary file:** the browse's primary file, not an unrelated file in the procedure schema.
- **LIST:** the browse LIST that will display the icon.
- **Unique field:** a field that identifies one record (Customer example: CUS:CustNumber). This is a FIELD, not a KEY label like CUS:KeyCustNumber.

## Tag icons

In the **LIST Formatter**, select a column that already displays a field (for example Company), enable its icon area, and set the icon style to **Transparent**, **not Normal**. Then, on xSearch's **Tag icons** tab, choose that same field (for example `CUS:Company`). A dedicated icon-only column is optional; the icon can appear beside the existing text.

With **Normal** icon formatting, tagged icons can leave a visible bounding rectangle in nearby untagged rows. **Transparent** formatting produces the cleaner checkmark appearance shown in the updated demo. The choice is made in Clarion's LIST Formatter; setting xSearch's Icon field alone does not change the LIST format. The template provides tagged and untagged `.ICO` defaults.

If a generated source file reports CUS:COMPANY_ICON not found, verify the LIST Formatter icon area first. Merely setting xSearch's Icon Field does not create the associated icon-number field.

## Optional tagged-row highlighting

The tag icon identifies a tagged record in a single LIST column. Version 5 also lets you **highlight the full tagged row**, so marked records stand out across all displayed columns while the normal selected-row highlight remains intact.

1. Open the ABC Browse procedure's **Search this browse and tag what it finds** extension.
2. Select the **Appearance** tab.
3. Under **Optional: Tagged Row Highlighting**, check **Highlight tagged rows**.
4. Choose the **Background colour** (shown only after enabling highlighting).
5. Generate and compile the application.

The setting is **per browse** and **off by default**. It applies to tagged rows; untagged rows retain their normal appearance. The tag/untag icon behavior is not replaced. The option uses the ABC LIST queue's color fields and does not require a new data-dictionary field. Developers who do not want colored rows simply leave the checkbox off.

This is independent of the two **Search window colors** prompts above it, which control the backgrounds of the original built-in Search dialog. The tagged-row option colors the *browse rows*, not the search dialog.


## Choosing the unique record field

When using **Local Queue**, you must tell xSearch how to distinguish one record from another. Open the Search control's **Tag storage** tab, choose **Tag store settings...**, and select the field that uniquely identifies each record. For the Customer browse, that might be **CUS:CustNumber**.

Choose the **FIELD itself**, not a KEY such as CUS:KeyCustNumber. xSearch uses the selected field to remember which records you tagged. If you use **Global Queue** or **External File**, configure the same unique field in the global shared-storage entry as well as the browse.

For the full setup and tag lifetimes, see [Choose Where Tags Are Stored](tag-storage.md).

## Editing an installed control

Right-click the browse procedure in the APP tree > **Extensions** > double-click **Search this browse and tag what it finds**. In Window Designer, right-click the Search button and choose **Actions**.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [Multi-DLL](multi-dll.md)
