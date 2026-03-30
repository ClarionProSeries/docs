---
title: "vuMailKit - Template Usage"
summary: "To use vuMailKit, add the global extension template to your application."
description: "To use vuMailKit, add the global extension template to your application and configure the options needed for your application build."
keywords: ["documentation", "template", "application", "vuMailKit", "Clarion", "global", "usage"]
page_type: "guide"
last_updated: "2026-03-30"
---

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md) | [OAuth](oauth/index.md)

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
- generate the public Clarion prototypes used by the application

## OAuth setup note

If you enable OAuth support in the **vuMailKit global template**, open the **OAuth Settings** tab and enter the provider values in quoted form.

Example format:

```text
'client-string'
```

For Google / Gmail support, both the **Google Client ID** and **Google Secret** are entered this way.

For step-by-step provider setup instructions, see:

- [OAuth Setup](oauth/index.md)
- [Microsoft OAuth Setup](oauth/microsoft.md)
- [Google / Gmail OAuth Setup](oauth/google-gmail.md)

## Deployment reminder

Include **vuMailKit.dll** with your application at runtime.
The **.lib** file is used only at compile time.

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md) | [OAuth](oauth/index.md)