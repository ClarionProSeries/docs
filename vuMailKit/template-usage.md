---
title: "vuMailKit - Template Usage"
summary: "To use vuMailKit, add the global extension template to your application and enter the license in the template settings."
description: "To use vuMailKit, add the global extension template to the Clarion EXE application, enter the developer license string in single quotes, and configure any OAuth settings needed for the application build."
keywords: ["documentation", "template", "application", "vuMailKit", "Clarion", "global", "usage", "OAuth", "license", "multi-DLL"]
page_type: "guide"
last_updated: "2026-07-01"
---

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# vuMailKit - Template Usage

To use **vuMailKit**, add the global extension template to your Clarion application and enter the license supplied with your order.

## Add the template and setup wizard

1. Open your EXE application in the Clarion IDE.
2. Go to **Global Extensions** and click **Insert**.
3. Type **vuMailKit** in the search box.
4. Select the **vuMailKit** global extension entry and click **Select**.
5. Enter the required template settings, including the developer license.
6. When the global template is configured, use Clarion **CTRL+U** to import the [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md).
7. Compile the application.
8. Run the compiled EXE and open the **vuMailKit Email Setup Wizard** from your application.

The global template initializes vuMailKit licensing and generates the Clarion prototypes your application needs. The **vuMailKit Email Setup Wizard** is a separate utility template that you import into the application and run from the compiled EXE.

The wizard lets the user enter an email address, detects likely provider settings, handles OAuth authorization when the account requires it and OAuth support is enabled, sends a test email, and saves the working settings into a reusable profile. Adding the global template alone does not create that profile.

See [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md) for the full workflow.

## License setup note

The vuMailKit global template generates the startup call that initializes licensing for the running EXE. Enter the developer license string in the template field inside single quotes.

Example format:

```text
'license-string'
```

The generated startup code calls [vuMailKitInitialize](functions/vuMailKitInitialize.md) before vuMailKit send, setup, autodetect, or profile functions are used. If the license is not initialized, those functions return -9001 and [vuMailLastError](functions/vuMailLastError.md) reports a vuMailKit licensing/setup problem.

Hand-coded integrations can call [vuMailKitInitialize](functions/vuMailKitInitialize.md) directly, but the normal Clarion template path is preferred.

## Clarion multi-DLL applications

In a Clarion multi-DLL application, add the vuMailKit global template to the EXE app.

Do not add it separately to each supporting DLL app. The EXE owns startup initialization. Once the EXE has initialized vuMailKit, the same runtime DLL is available to code called from anywhere in the running program.

This avoids the common mistake of placing the template in a DLL that may not run before another part of the program tries to send mail.

## Typical template responsibilities

The template is the normal place to:

- provide the license string used by [vuMailKitInitialize](functions/vuMailKitInitialize.md)
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

## OAuth Success Name

When using Google / Gmail OAuth, the **OAuth Success Name** field lets you specify the name shown to the user on the Google success page after authorization completes successfully.

This is useful when you want the post-login success page to display your product name, company name, or application name instead of a more generic label.

Example:

```text
'My Mail Utility'
```

Enter the value in quoted form, the same way you enter the Google client values.

This setting is used for the Google success page presentation only. It does not replace your Google Client ID or Google Secret.

For step-by-step provider setup instructions, see:

- [OAuth Setup](oauth/index.md)
- [Microsoft OAuth Setup](oauth/microsoft.md)
- [Google / Gmail OAuth Setup](oauth/google-gmail.md)

## Deployment reminder

Include **vuMailKit.dll** with your application at runtime.  
The **.lib** file is used only at compile time.

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)
