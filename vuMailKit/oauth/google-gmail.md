---
title: "Google / Gmail OAuth Setup"
summary: "How to create Google OAuth credentials for use with vuMailKit."
description: "Step-by-step guide for creating Google or Gmail OAuth credentials and entering them into the vuMailKit global template."
keywords: ["vuMailKit", "OAuth", "Google", "Gmail", "Google Workspace", "Clarion", "email"]
page_type: "guide"
last_updated: "2026-03-30"
---

[Home](../index.md) | [OAuth](index.md) | [Microsoft OAuth](microsoft.md)

# Google / Gmail OAuth Setup

This guide explains how to create Google OAuth credentials for use with vuMailKit.

Google OAuth is commonly needed for Gmail.com accounts and Google Workspace hosted mailboxes when modern authentication is required.

## Before you begin

Make sure you have:

- a working vuMailKit installation
- access to the Google account or Google Cloud project that will own the OAuth client
- permission to create or manage Google OAuth credentials
- your vuMailKit project ready for testing

## What you will need from Google

For vuMailKit Basic, you will typically need:

- **Google Client ID**
- **Google Secret**

Copy both values carefully. You will later place them into the vuMailKit template in quoted form.

## Where you enter them in vuMailKit

In your Clarion application, open the:

- **vuMailKit global template**
- **OAuth Settings** tab

Then:

- check **Enable Google OAuth Support**
- paste the Google Client ID into the **Google Client ID** field
- paste the Google Secret into the **Google Secret** field

Enter each value in this format:

```text
'client-string'
```

Example:

```text
'123456789012-abcdefghijklmnopqrstuvwxyz.apps.googleusercontent.com'
'GOCSPX-abcdefghijklmnopqrstuvwxyz123456'
```

Do not remove the single quotes.

## General setup flow

## 1. Open Google Cloud Console

Go directly to Google Cloud Console:

```text
https://console.cloud.google.com/
```

Sign in with the Google account that will own the OAuth client.

Then create or select the Google Cloud project you want to use for vuMailKit.

## 2. Configure the Google Auth platform settings if needed

Google may require you to set up the OAuth consent and branding information before the client can be fully used.

In Google Cloud Console, look for:

**Google Auth platform** > **Branding**

If the Google Auth platform is not configured yet, complete the required setup there.

## 3. Open the credentials area

To create the actual OAuth client, go to:

**APIs & Services** > **Credentials**

You can also go directly to the credentials page here:

```text
https://console.cloud.google.com/apis/credentials
```

## 4. Create the OAuth client

Click **Create Credentials** > **OAuth client ID**

Then choose the application type that matches the authentication flow your vuMailKit-based application will use.

## 5. Configure the client for the intended login flow

Set the options required for the Google OAuth flow used by your application.

The exact labels in the Google portal may vary over time, but the main goal remains the same: create a valid OAuth client and obtain the correct Client ID and Client Secret values.

## 6. Copy the Google Client ID and Google Secret

Once the OAuth client has been created, copy:

- **Client ID**
- **Client Secret**

These are the two values you place into the vuMailKit template.

## Common mistakes

Common setup problems include:

- creating the OAuth client under the wrong Google project
- failing to complete consent or branding setup when required
- copying the wrong values
- forgetting to wrap both values in single quotes in the template
- enabling Google OAuth support in the template but leaving either field blank

## After setup

After entering the Google Client ID and Google Secret into the vuMailKit template:

- save the template settings
- regenerate and compile your application
- test the Google OAuth flow in your application

For related runtime functions, see:

- [OAuth Related functions](../functions/index.md#oauth-related)

[Home](../index.md) | [OAuth](index.md) | [Microsoft OAuth](microsoft.md)