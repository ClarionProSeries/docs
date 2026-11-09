---
title: "Using xSearch in Multi-DLL Applications"
summary: "Configure the xSearch global extension and shared tag storage across Clarion APPs."
description: "Step-by-step multi-DLL xSearch setup with data DLL and browse DLL settings and storage lifetimes."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "tagging"]
page_type: "guide"
last_updated: "2026-11-07"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)

# Using xSearch in Multi-DLL Applications

A multi-DLL Clarion application can use xSearch in the DLL that contains a browse, with shared tag definitions generated in the Data DLL. xSearch's flexibility lets different files use Global Queue or External File storage while other browses use Local Queue. That flexibility means the shared settings must be configured explicitly in each relevant APP. Local Queue exists only for the life of its browse; Global Queue remains available across browse windows until the application exits.

## Where to add the extension

Here is the layout used by Clarion's DLL Tutor example:

| APP | Role | xSearch setup |
|---|---|---|
| allfiles.app | Data DLL | Add xSearch global extension; define shared tag stores |
| updates.app | DLL containing the Customer browse | Add xSearch global extension and xSearch controls on ViewCustomers |
| DLLTutor.app | Main EXE / frame | No xSearch global extension needed just to call ViewCustomers |
| reports.app | Report DLL | Add the relevant xSearch support only if a report in this APP uses it |

The global extension belongs in the **APP**, not the data dictionary. You do not need to add it to every APP in the solution, only the ones participating in xSearch. The shared xSearch object in the owning APP supplies the configured INI path to browse and export controls; if that path comes from a runtime variable, initialize it before the first xSearch browse opens. See [INI Files and Remembered Settings](ini-settings.md).

## Step 1: Configure the Data DLL

In allfiles.app, open **Global Extensions** and add **xSearch 5.0 - Application Setup**.

On **Tag Storage**, insert the Customer file under **Files with shared tag storage** when you want Global Queue or External File storage. Set the unique field to CUS:CustNumber and choose **Keep the tags in a queue** or **Keep the tags in a file**. A Local Queue does not need a shared Customer entry.

## Step 2: Configure the Browse DLL

In updates.app, add the same global xSearch extension. For a shared Customer tag store, insert a matching Customer entry with the **same storage choice** and **same unique field** used by allfiles.app.

Clarion does not automatically copy one APP's xSearch global settings into another. The two sets of generated declarations must agree.

## Step 3: Configure the Customer browse

In ViewCustomers, open **Window Designer**. In **Control Templates > xSearch**, place the Search button associated with **Browse on Customer**. On the Search control's **Actions** prompts, set:

| Setting | Customer example |
|---|---|
| Primary file | Customer |
| List control | The Customers browse LIST |
| Icon field | CUS:Company |
| Tag storage | Local Queue, Global Queue, or External File, as required |
| Unique field under Tag store settings | CUS:CustNumber |

Enable **Transparent** icon formatting (not Normal) on the Company column in the LIST Formatter. This allows the tag icon to appear beside Company without adding another field to the dictionary.

To reopen the xSearch settings later, right-click the ViewCustomers procedure in the application tree, choose **Extensions**, and double-click **Search this browse and tag what it finds**.

## Step 4: Match the storage choices

| Browse choice | Data DLL global entry | Browse DLL global entry | Lifetime |
|---|---|---|---|
| Local Queue | No shared file entry required | No shared file entry required | Until browse closes |
| Global Queue | Customer: Keep tags in a queue | Customer: Keep tags in a queue | Until the application exits |
| External File | Customer: Keep tags in a file | Customer: Keep tags in a file | Across application restarts |

The **browse control must also select the same storage method**, and all locations must use CUS:CustNumber as the unique identifier.

Different data files may use different shared storage choices within one application. The **Global tag file** field in the global extension is used only for External File storage: the value names the folder containing persistent tag files. It is not used for Global Queue.

## Step 5: Build the application

Compile the Data DLL, then the DLL containing the browse, and then the calling application as needed. After changing shared definitions across DLLs, use **Clean Solution** followed by **Rebuild Solution** if the build continues to use outdated declarations or code.

**Calling a report in another DLL.** In DLL Tutor, reports.app already imports updates.lib to use ViewCustomers. Adding reports.lib to updates.app would introduce the reverse dependency and can trigger a dependency-cycle build error. The qualified demonstration keeps the customer report in Reports DLL and invokes its exported procedure from a Print menu item on the **main EXE frame**. With the report configured to use xSearch tags, the report successfully prints only tagged customers. This arrangement demonstrates cross-DLL tagged reporting without changing the tutorial's DLL dependency structure. The general cross-DLL procedure setup remains the responsibility of the application designer. The report procedure must have **xSearch 5.0 for Report** configured with matching shared tag storage; the main EXE button or menu that calls it needs no special xSearch code. See [Reports and Processes Using Tags](tagged-reports-processes.md).

To add Tag/Untag, Tag All, Untag All, or Show Tagged buttons, return to Window Designer. Those companion controls appear after the main Search control is placed. See [Control Templates](control-templates.md).

For details on the different tag lifetimes, see [Tag Storage](tag-storage.md).

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)
