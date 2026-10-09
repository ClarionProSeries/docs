---
title: "ProTOML - Template Usage"
summary: "Add the ProTOML global template, enter the developer license, and use the generated high-level object."
description: "Normal template-first setup for using ProTOML in a Clarion application."
keywords: ["ProTOML", "Clarion", "template", "application", "license", "usage"]
page_type: "guide"
last_updated: "2026-10-07"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)

# ProTOML - Template Usage

To use ProTOML, add the global extension template to your Clarion application and enter the license supplied with your order.

## Add the template

1. Open your EXE application in the Clarion IDE.
2. Go to **Global Extensions** and click **Insert**.
3. Type **ProTOML** in the search box.
4. Select the ProTOML global extension entry and click **Select**.
5. Enter the required template settings. Use the developer license value supplied with your purchase, or leave the default `PTM-DEMO` value for demo mode.
6. Write the ProTOML calls your application needs.
7. Compile and run the application.

The global template supplies the ready-to-use Toml object, includes the high-level wrapper, links the ProTOML import library, and generates the startup license initialization.

## Write the application code

After adding the template, call the high-level methods wherever your application needs them:

```clarion
Toml.StartDocument()
Toml.SetString('application.name',AppName)
Toml.WriteGroup('settings',AppSettings)
Toml.WriteQueue('contacts',ContactQueue)
```

You do not need to declare the Toml object or call the low-level API functions.

## Clarion multi-DLL applications

In a Clarion multi-DLL application, add the ProTOML global template to the EXE app.

The supporting DLL apps do not need their own ProTOML global extension. The EXE startup code initializes ProTOML for the running process.

## Hand-coded applications

Developers who intentionally do not use the template can follow [Hand-Coded Integration Without the Template](hand-coded-integration.md). That page shows the class include, object declaration, import-library requirement, and manual license initialization.

## Deployment reminder

Include ProTOML.dll with your application at runtime. The .lib file is used only at compile time.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)
