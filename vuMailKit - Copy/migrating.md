---
title: "Migrating from vuMail to vuMailKit"
summary: "How to replace the old vuMail template with vuMailKit in an existing Clarion application."
description: "Step-by-step instructions for moving an existing Clarion application from the old vuMail template to the vuMailKit template, including template replacement, OAuth settings, licensing, deployment, and when the setup wizard is required."
keywords: ["migration", "vuMail", "vuMailKit", "Clarion", "template", "OAuth", "Microsoft", "Google", "license"]
page_type: "guide"
last_updated: "2026-03-26"
---

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# Migrating from vuMail to vuMailKit

If you already have an application that uses the old **vuMail** template, moving to **vuMailKit** is straightforward.

In most cases, your existing application logic can remain largely unchanged. The main work is replacing the old global extension template, entering the new template settings, and deciding whether you want to support OAuth and modern provider setup through the wizard.

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

At that point, the application is now configured to use the **vuMailKit** template instead of the old **vuMail** template.

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

## Step 6. Choose your usage path

From that point on, you have two practical paths.

### Path A. Stay with your existing non-OAuth flow

If your application does not need OAuth and you do not need the setup wizard, you do not have to run the wizard at all.

In that case:

- compile the program as usual
- continue using your existing username, password, and other values the way your application already does
- let the application behave like a modernized drop-in replacement for the old **vuMail** workflow

This is the simplest migration path.

### Path B. Use the wizard for OAuth or modern provider setup

If you want to support:

- Microsoft OAuth
- Google OAuth
- account autodetect
- modern TLS-style provider setup
- managed profile save and reuse

then run the **vuMailKit** setup wizard inside your application.

The wizard lets the end user detect settings, authenticate where supported, send a test message, and save the managed profile for later use.

## What happens if you do not run the wizard

If you do not run the wizard, the application will continue to use the values your program is already supplying through the existing code and legacy-compatible runtime behavior.

That means many older **vuMail** applications can move to **vuMailKit** and continue working without forcing an immediate workflow change for the user.

## What happens after you do run the wizard

Once the user runs the wizard and saves a profile, **vuMailKit** begins using the managed-profile model for normal persistence.

That means:

- the saved profile becomes the normal active profile
- the application can use the modern stored profile behavior on later runs
- OAuth-capable providers and modern TLS-driven setups become much easier to support

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
- Add the new **vuMailKit** global extension.
- Enter your developer license in single quotes.
- If desired, enable Microsoft OAuth and enter the Microsoft Client ID in single quotes.
- If desired, enable Google OAuth and enter the Google Client ID and Google Secret in single quotes.
- Recompile the application.
- Remove any old **vuMail** DLL files from the application folder.
- Decide whether you want to stay with your legacy-compatible flow or move users to the setup wizard.

## In short

If you do not need OAuth, many applications can move from **vuMail** to **vuMailKit** with very little disruption.

If you do want OAuth and modern provider setup, add the template settings, compile, and then use the wizard to let the application transition into the newer managed-profile model.

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)
