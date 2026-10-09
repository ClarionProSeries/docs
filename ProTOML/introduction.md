---
title: "ProTOML - Introduction"
summary: "ProTOML makes TOML easy to use from Clarion applications."
description: "ProTOML provides a global template, a high-level Clarion wrapper, and optional low-level API access for creating, storing, and exchanging TOML data."
keywords: ["ProTOML", "Clarion", "TOML", "template", "wrapper"]
page_type: "overview"
last_updated: "2026-10-07"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)

# ProTOML - Introduction

ProTOML makes TOML easy to use from normal Clarion applications.

The global template supplies the high-level Toml object used by the examples and demo programs. The wrapper handles the ordinary work, so most developers can use simple calls such as WriteGroup, WriteRecord, WriteQueue, SaveMemo, and LoadMemo. Ordinary GROUP, QUEUE, and FILE RECORD declarations work without the BINDABLE attribute.

## Highlights

- High-level Clarion template and wrapper
- Individual string, numeric, Boolean, date, and time values
- GROUP mapping
- Current FILE record-buffer mapping
- QUEUE mapping to TOML arrays of tables
- Complete-document text and buffer storage
- MEMO and BLOB storage
- Normal .toml file storage
- Readable error information
- Optional low-level API for specialized work

## A small example

```clarion
Toml.StartDocument()
Toml.WriteGroup('settings',AppSettings)
Toml.WriteQueue('contacts',ContactQueue)
```

The same document can be displayed, edited, stored with an existing record, saved as a .toml file, or exchanged with software written in other modern languages.

## Getting started

Begin with [Installation](install.md), then review:

- [Template Registration](template-registration.md)
- [Template Usage](template-usage.md)
- [Getting Started](getting-started/index.md)
- [Deployment](deployment.md)
- [High-Level Methods](classes/index.md)

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)
