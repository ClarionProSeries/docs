---
title: "Single-EXE Installation"
summary: "Configure xSearch for a normal Clarion ABC application built as one EXE."
description: "Configure xSearch for a normal Clarion ABC application built as one EXE."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "tagging"]
page_type: "guide"
last_updated: "2026-11-07"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [Multi-DLL](multi-dll.md)

# Single-EXE Installation

1. Open the EXE APP. Add **xSearch 5.0 - Application Setup** under **Global Extensions**.
2. Open an ABC Browse's Window Designer.
3. From **Control Templates > xSearch**, select the entry for the specific browse (such as *Browse on Customer*) and place the Search button.
4. Right-click the placed Search button and choose **Actions**. Double-clicking a button opens embeds instead; it does not open the template prompts.
5. On **Browse**, choose the primary file belonging to that browse and its LIST control.
6. On **Tag storage**, choose **Local Queue** for browse-local tags. Open **Tag store settings...** and select a unique record field, such as CUS:CustNumber for the example Customer file.
7. In the LIST Formatter, enable **Transparent** icon display in a column already in the LIST (for example Company), **not Normal**; this prevents the visible icon bounding rectangle on adjacent rows. On **Tag icons**, choose that same field (CUS:Company). No new dictionary field or icon-only column is necessary.
8. Compile and run. Search for a known name and confirm that the result is tagged and the browse shows its icon.

For optional tagging buttons, see [Control Templates](control-templates.md).

**Shortcut after installation:** Right-click the browse procedure in the application tree, choose **Extensions**, and double-click the xSearch entry. You can edit its prompts without reentering Window Designer.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [Multi-DLL](multi-dll.md)
