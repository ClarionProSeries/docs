---
title: "Create Your First TOML Document"
summary: "See the Clarion variables, ProTOML calls, and resulting TOML document together."
description: "A complete first example showing Clarion values written to TOML and read back."
keywords: ["ProTOML", "Clarion", "first document", "settings"]
page_type: "guide"
last_updated: "2026-10-07"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# Create Your First TOML Document

After adding the ProTOML global template, the generated Toml object is ready to use.

## Clarion data

```clarion
AppName        STRING(80)
RefreshMinutes LONG
AutoSave       BYTE

CODE
AppName = 'PageSnip'
RefreshMinutes = 15
AutoSave = TRUE
```

## Create and populate the document

```clarion
Toml.StartDocument()
Toml.SetString('application.name',AppName)
Toml.SetLong('application.refresh_minutes',RefreshMinutes)
Toml.SetBool('application.auto_save',AutoSave)
```

The resulting TOML is:

```toml
[application]
name = "PageSnip"
refresh_minutes = 15
auto_save = true
```

## Read the values later

```clarion
CLEAR(AppName)
RefreshMinutes = 0
AutoSave = FALSE

Toml.GetString('application.name','',AppName)
Toml.GetLong('application.refresh_minutes',5,RefreshMinutes)
Toml.GetBool('application.auto_save',FALSE,AutoSave)
```

The Clarion variables again contain PageSnip, 15, and TRUE.

Continue with [Store and Restore Clarion Data](store-and-restore-clarion-data.md) when you are ready to map complete Clarion structures.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
