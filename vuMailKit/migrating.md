---
title: "Migrating from vuMail to vuMailKit"
summary: "How to replace the old vuMail template with vuMailKit in an existing Clarion application."
description: "Step-by-step instructions for moving an existing Clarion application from the old vuMail template to the vuMailKit template, including template replacement, OAuth settings, licensing, deployment, and when the vuMailKit Email Setup Wizard is required."
keywords: ["migration", "vuMail", "vuMailKit", "Clarion", "template", "OAuth", "Microsoft", "Google", "license"]
page_type: "guide"
last_updated: "2026-03-26"
---

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# Migrating from vuMail to vuMailKit

If you already have an application that uses the old **vuMail** template, moving to **vuMailKit** is straightforward.

In most cases, your existing application logic can remain largely unchanged. The main work is replacing the old global extension template, entering the new template settings, and deciding whether you want to support OAuth and modern provider setup through the vuMailKit Email Setup Wizard.

## Step 1. Install and register the vuMailKit template

Install **vuMailKit** and register the template in Clarion.

If you need the detailed setup steps, see:

- [Installation Instructions](install.md)
- [Registering the Template](template-registration.md)

## Step 2. Remove the old vuMail global extension

Open your application in the Clarion IDE.

Then:

1. Open **Global Extensions**.
2. Locate the old **vuMail** global extension.
3. Remove that old template from the application.

## Step 3. Add the new vuMailKit global extension

Still in **Global Extensions**:

1. Click **Insert**.
2. Find **vuMailKit**.
3. Add the **vuMailKit** global extension to the application.

At that point, the application has the new **vuMailKit** global extension, but it is not ready to run until the required template settings are entered and the application is compiled.

## Step 4. Enter OAuth settings if you want OAuth support

If you want to support Microsoft OAuth in the application:

1. Check the box to enable Microsoft OAuth support.
2. Enter your Microsoft Client ID inside single quotes.

Example:

```Clarion
'Microsoft-client-id-string'
```

If you want to support Google OAuth in the application:

1. Check the box to enable Google OAuth support.
2. Enter your Google Client ID inside single quotes.
3. Enter your Google Secret inside single quotes.

Examples:

```Clarion
'Google-client-id-string'
'Google-secret-string'
```

If you do not need OAuth support, you can leave those options disabled.

## Step 5. Enter your developer license

Regardless of whether you plan to use OAuth, enter your **vuMailKit developer license** in the template settings.

Enter the license string inside single quotes.

Example:

```Clarion
'Your-license-string-goes-here'
```

This is the developer license you receive with your order.

The license value must be entered in the template field as a quoted Clarion string. The template-generated startup code passes that value to [vuMailKitInitialize](functions/vuMailKitInitialize.md) when the EXE starts.

If vuMailKit licensing is not initialized before setup, profile, autodetect, or send functions are called, those calls return -9001 and [vuMailLastError](functions/vuMailLastError.md) reports a vuMailKit licensing/setup problem.

## Step 5A. Multi-DLL placement rule

If the application is a Clarion multi-DLL application, add the **vuMailKit** global extension to the EXE app.

Do not add the global extension separately to each supporting DLL app. The EXE startup should initialize vuMailKit once for the process, after which the runtime DLL can be used by code reached from anywhere in the running program.

## Step 5B. Import the vuMailKit Email Setup Wizard if you want the modern setup flow

If you want users to use the new setup flow, use the Clarion **Utility Template** command, **CTRL+U**, to import the **vuMailKit Email Setup Wizard** into the EXE application.

The vuMailKit Email Setup Wizard is a major difference from older vuMail setup. It validates the entered email address, detects likely provider/server settings, handles OAuth authorization when OAuth is enabled and required, sends a test email, and saves the result into a reusable profile.

This means most users do not need to know server names, SMTP ports, or TLS settings.

## Step 6. Choose your usage path

From that point on, you have two practical paths.

### Path A. Stay with your existing non-OAuth flow

If your application does not need OAuth and you do not need the **vuMailKit Email Setup Wizard**, you do not have to import or run the vuMailKit Email Setup Wizard at all.

In that case:

- compile the program as usual
- continue using your existing username, password, and other values the way your application already does
- let the application behave like a modernized drop-in replacement for the old **vuMail** workflow

This is the simplest migration path.

### Path B. Use the vuMailKit Email Setup Wizard for OAuth or modern provider setup

If you want to support:

- Microsoft OAuth
- Google OAuth
- account autodetect
- modern TLS-style provider setup
- managed profile save and reuse

then use the Clarion **Utility Template** command, **CTRL+U**, to import the [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md), compile the EXE, and run it inside your application.

The **vuMailKit Email Setup Wizard** lets the end user enter an email address, validate it, detect provider/server settings, authenticate through OAuth where supported and enabled, send a test message, and save the managed profile for later use without writing OAuth flow code in the application.

## What happens if you do not run the vuMailKit Email Setup Wizard

If you do not run the **vuMailKit Email Setup Wizard**, the application will continue to use the values your program is already supplying through the existing code and legacy-compatible runtime behavior.

That means many older **vuMail** applications can move to **vuMailKit** and continue working without forcing an immediate workflow change for the user.

## What happens after you do run the vuMailKit Email Setup Wizard

Once the user runs the **vuMailKit Email Setup Wizard** and saves a profile, **vuMailKit** begins using the managed-profile model for normal persistence.

That means:

- the saved profile becomes the normal active profile
- the application can use the modern stored profile behavior on later runs
- OAuth-capable providers and modern TLS-driven setups become much easier to support because the wizard saves the working profile and normal send functions can reuse it

## Remove old runtime files

If you still have copies of the old **vuMail** DLL in the application folder, delete them.

You do not want the old runtime files lingering in the application directory after migration.

## New runtime deployment behavior

The **vuMailKit** template automatically places a copy of **vuMailKit.dll** into the application folder at compile time.

Because **vuMailKit** now uses the flattened single-DLL deployment model for the Basic edition, that runtime deployment is simpler than older multi-file managed deployment approaches.

## Recommended migration checklist

- Install **vuMailKit**.
- Register the **vuMailKit** template.
- Remove the old **vuMail** global extension.
- Add the new **vuMailKit** global extension to the EXE app.
- Enter your developer license in single quotes.
- In a multi-DLL application, keep the global template on the EXE app, not on the supporting DLL apps.
- If desired, enable Microsoft OAuth and enter the Microsoft Client ID in single quotes.
- If desired, enable Google OAuth and enter the Google Client ID and Google Secret in single quotes.
- Decide whether you want to stay with your legacy-compatible flow or move users to the **vuMailKit Email Setup Wizard**.
- If you want the wizard flow, use Clarion **CTRL+U** to import the **vuMailKit Email Setup Wizard**.
- Recompile the application.
- Remove any old **vuMail** DLL files from the application folder.

## In short

If you do not need OAuth, many applications can move from **vuMail** to **vuMailKit** with very little disruption.

If you do want OAuth and modern provider setup, add the template settings, use Clarion **CTRL+U** to import the **vuMailKit Email Setup Wizard**, compile, and then run the wizard to let the application transition into the newer managed-profile model.

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)
