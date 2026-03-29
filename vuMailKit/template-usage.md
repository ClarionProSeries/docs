---
title: "vuMailKit - Template Usage"
summary: "To use vuMailKit, add the global extension template to your application."
description: "To use vuMailKit, add the global extension template to your application and configure the options needed for your application build."
keywords: ["documentation", "template", "application", "vuMailKit", "Clarion", "global", "usage"]
page_type: "guide"
last_updated: "2026-03-26"
---

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# vuMailKit - Template Usage

To use **vuMailKit**, add the global extension template to your application.

## Add the template

1. Open your application in the Clarion IDE.
2. Go to **Global Extensions** and click **Insert**.
3. Type **vuMailKit** in the search box.
4. Select the **vuMailKit** global extension entry and click **Select**.
5. Click **OK** to close the Global Extensions window.

## Typical template responsibilities

The template is the normal place to:

- provide the license string used by `vuMailKitInitialize()`
- configure product-wide defaults such as OAuth support
- supply OAuth client settings for supported providers
- it also generates the public Clarion prototypes used by the application

## Deployment reminder

Include **vuMailKit.dll** with your application at runtime.
The **.lib** file is used only at compile time.

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)
