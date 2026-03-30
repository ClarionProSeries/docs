
[Home](../index.md) | [OAuth](index.md) | [Google / Gmail OAuth](google-gmail.md)

# Microsoft OAuth Setup

This guide explains how to create Microsoft OAuth credentials for use with vuMailKit.

Microsoft OAuth is commonly needed for Microsoft 365, Office 365, Outlook.com, Hotmail.com, and Live.com accounts when modern authentication is required.

## Before you begin

Make sure you have:

- a working vuMailKit installation
- access to the Microsoft account or tenant that will own the app registration
- permission to create or manage the Microsoft application registration
- your vuMailKit project ready for testing

## What you will need from Microsoft

For vuMailKit Basic, you will typically need:

- **Microsoft Client ID**

Copy that value carefully. You will later place it into the vuMailKit template in quoted form.

## Where you enter it in vuMailKit

In your Clarion application, open the:

- **vuMailKit global template**
- **OAuth Settings** tab

Then:

- check **Enable Microsoft OAuth Support**
- paste the Microsoft Client ID into the **Microsoft Client ID** field

Enter it in this format:

```text
'client-string'
```

Example:

```text
'12345678-90ab-cdef-1234-567890abcdef'
```

Do not remove the single quotes.

## General setup flow

## 1. Open the Microsoft Entra admin center

Go directly to the Microsoft Entra admin center:

```text
https://entra.microsoft.com/
```

Sign in with the Microsoft account or Microsoft 365 tenant account that will own the app registration.

If you have access to more than one tenant, switch to the correct tenant first.

Then go to:

**Entra ID** > **App registrations** > **New registration**

## 2. Create a new application registration

Create a new registration for your vuMailKit-based application.

Use a clear name so you can identify it later.

## 3. Choose the supported account types

Microsoft will ask which types of accounts your registration should support.

Choose the option that matches the accounts your application is expected to work with. This matters because it controls which Microsoft users can complete authorization.

## 4. Configure the registration for the flow you will use

Set the registration options to match the OAuth flow expected by your vuMailKit-based application.

The exact labels in the Microsoft portal may change over time, but the goal is the same: create the registration so it can be used for the Microsoft OAuth sign-in process your application will invoke.

## 5. Copy the Microsoft Client ID

Once the registration has been created, copy the **Application (client) ID** value.

This is the value you place into the **Microsoft Client ID** field in the vuMailKit template.

## Common mistakes

Common setup problems include:

- choosing the wrong supported account type
- copying the wrong value instead of the Application (client) ID
- landing in **Enterprise applications** instead of **App registrations**
- forgetting to wrap the value in single quotes in the template
- enabling Microsoft OAuth support in the template but leaving the Client ID blank
- testing with a Microsoft account type that the registration was not configured to support

## After setup

After entering the Microsoft Client ID into the vuMailKit template:

- save the template settings
- regenerate and compile your application
- test the Microsoft OAuth flow in your application

For related runtime functions, see:

- [OAuth Related functions](../functions/index.md#oauth-related)

[Home](../index.md) | [OAuth](index.md) | [Google / Gmail OAuth](google-gmail.md)