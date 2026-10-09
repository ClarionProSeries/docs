
[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)

# ProTOML

![ProToml](assets/images/ProTOML270x90.png)

Current Version: ProTOML 1.1.0

Release Date: 2026-10-07

Last Updated: 2026-10-07

Copyright (c) 2026 Clarion ProSeries by LANSRAD. All rights reserved.

ProTOML gives Clarion developers an easy way to create, read, edit, store, and exchange TOML data.

The ProTOML global template supplies a ready-to-use high-level object. Most developers use that object and never need to call the low-level DLL API functions directly. Ordinary GROUP, QUEUE, and FILE RECORD declarations work without BINDABLE.

Use the links below to browse the documentation.

- [Introduction](introduction.md)
- [Requirements](requirements.md)
- [Installation Instructions](install.md)
- [Registering the Template](template-registration.md)
- [Using the Template in Your Application](template-usage.md)
- [Getting Started](getting-started/index.md)
- [Browse Methods by Category](categories/index.md)
- [View All High-Level Methods](classes/index.md)
- [Low-Level API Reference](functions/index.md)
- [Hand-Coded Integration Without the Template](hand-coded-integration.md)
- [Demo and Licensing](demo-and-licensing.md)
- [Deployment](deployment.md)
- [What's New](whatsnew.md)
- [Version History](version-history.md)
- [Support](support.md)
- [About ProHelp Studio](prohelpstudio.md)

## How to get started

For a normal Clarion application:

1. Install ProTOML.
2. Register the ProTOML template if the installer did not register it automatically.
3. Add the ProTOML global template to the EXE application.
4. Enter the developer license in the template.
5. Write the high-level calls your application needs.
6. Compile and run the application.

```clarion
Toml.StartDocument()
Toml.WriteGroup('settings',AppSettings)
Toml.WriteQueue('contacts',ContactQueue)
Toml.SaveMemo(SettingsFile,STO:TomlMemoIndex)
```

## Start here

| Page | Purpose |
|---|---|
| [Getting Started](getting-started/index.md) | Task-based guides for the quickest path to useful results. |
| [What Most Developers Actually Use](getting-started/what-most-developers-actually-use.md) | The small set of high-level methods most applications use first. |
| [Using the ProTOML Template](template-usage.md) | Add the template, enter the developer license, and use the generated Toml object. |
| [Create Your First TOML Document](getting-started/your-first-document.md) | See Clarion values, the calls that store them, and the resulting TOML document. |
| [Store and Restore Clarion Data](getting-started/store-and-restore-clarion-data.md) | Map a GROUP, current FILE record buffer, and QUEUE without naming every field in code. |
| [Store Structured Data in One Field](store-structured-data-in-one-field.md) | Put several kinds of Clarion data into one MEMO or BLOB field. |

## What ProTOML can do

- Store individual strings, numbers, Boolean values, dates, and times.
- Write and read a GROUP with one high-level call.
- Write and read the current FILE record buffer with one high-level call.
- Write and read a QUEUE as a TOML array of tables.
- Combine several kinds of data in one readable document.
- Store that document in text, a MEMO, a BLOB, or a normal .toml file.
- Exchange data with modern languages and tools that support TOML.

See [What ProTOML Can Do for Your Clarion Application](what-protoml-can-do.md) and [Why Use ProTOML Instead of INI Files?](why-protoml-instead-of-ini.md).

## High-level wrapper and low-level API

The high-level Clarion wrapper is the normal ProTOML interface and is the interface used by the supplied demo applications.

The 40 low-level API functions remain available for developers who need direct access or a specialized integration. Most applications do not need them.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)