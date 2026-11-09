---
title: "Choose Where Tags Are Stored"
summary: "Use Local Queue, Global Queue, External File or a record field for tags."
description: "Compare Local Queue, Global Queue, External File and This File."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "tagging"]
page_type: "guide"
last_updated: "2026-11-07"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)

# Choose Where Tags Are Stored

Each xSearch browse chooses where its tags are kept. The storage method controls how long a tagged selection remains available and whether it can be shared with other procedures or sessions. **Local Queue lasts only while the browse remains open; Global Queue lasts for the application session.**

| Method | Stored in | After closing browse | After restarting application |
|---|---|---|---|
| Local Queue | Browse-local QUEUE | Cleared | Cleared |
| Global Queue | Application-wide QUEUE | Retained | Cleared |
| External File | Persistent tag files | Retained | Retained |
| This File | Field in the primary record | Retained | Retained |

## Local Queue

A Local Queue is the simplest choice when tags are only useful while one browse is open. Closing that browse clears its tags, even if the application is still running. On the Search control's **Tag storage** tab, select **Local Queue**. Then open **Tag store settings...** and choose a field that uniquely identifies a record, such as CUS:CustNumber in a Customer browse. Choose the data FIELD, not a KEY name. See [Browse Setup](browse-setup.md) for an illustrated setup context.

## Global Queue

Global Queue keeps tagged records in memory across browse windows during the application's session. Closing and reopening a browse does not clear those shared tags, but exiting the application does. Configure the file under **Files with shared tag storage** in the application global extension, select **Keep the tags in a queue**, and use **Global Queue** in the browse control. Multi-DLL applications require matching entries in the relevant APPs.

## External File

External File keeps the selection across application restarts. Choose **Keep the tags in a file** under **Files with shared tag storage**, and select **External File** on the browse control. In a multi-DLL application, make the global entries agree across the Data DLL and Browse DLL.

**External File location:** The global **Global tag file** setting currently specifies a **folder** for persistent tag files, not an individual TPS data file. The default value Tags.tps is treated as a folder name despite its extension. You may specify a more descriptive folder name for a new application. This setting is not used for Global Queue. The separate **Global INI file** setting stores search, window, and export preferences, never record tags. See [INI Files and Remembered Settings](ini-settings.md).

## This File: Store Tags in the Data Record

**This File** means that xSearch keeps each record's tagged/untagged status **inside the primary data file being browsed**, rather than in a separate tag queue or external tag file. The tag becomes part of the actual customer, order, or other record. It remains stored when the browse closes or the application exits.

Use this choice only when you intend tagged status to be stored with the application's data and shared like that data. In the Clarion dictionary, provide a field for the tag value (typically a BYTE flag) and a key over that tag field. Then choose **This File** in the Search control's **Tag storage** tab and select the **Tag field** and **Tag field key** under **Tag store settings...**. These are required dictionary changes, unlike the queue methods.

For a temporary, browse-only working selection, use **Local Queue** instead. For selections that persist without modifying your business records, consider **External File**.

## Mixing methods

One application may use Local Queue for a temporary browse, Global Queue for an application-wide work list, and External File for selections that must be available tomorrow. The method is chosen for each browse, and shared definitions are configured for each data file.

See [Multi-DLL Setup](multi-dll.md) when the definitions cross APP boundaries.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)
