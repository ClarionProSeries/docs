---
title: "OAuth Setup"
summary: "Overview of OAuth support in vuMailKit and links to provider setup guides."
description: "Explains OAuth support in vuMailKit and links to the Microsoft and Google/Gmail setup guides."
keywords: ["vuMailKit", "OAuth", "Microsoft", "Google", "Gmail", "Clarion", "email"]
page_type: "overview"
last_updated: "2026-04-03"
---

[Home](../index.md) | [OAuth](index.md) | [Microsoft OAuth](microsoft.md) | [Google / Gmail OAuth](google-gmail.md)

# OAuth Setup

This section explains how to prepare OAuth credentials for use with vuMailKit.

OAuth is commonly required for modern Microsoft 365, Outlook.com, Google, and Gmail accounts. vuMailKit includes built-in OAuth support and helper functions, but the developer must still obtain provider credentials from Microsoft or Google before those flows can be used in an application.

## Where these values go in vuMailKit

OAuth credentials are entered in the **vuMailKit global template**.

Go to:

- **vuMailKit global template**
- **OAuth Settings** tab

There you can:

- check **Enable Microsoft OAuth Support**
- enter the **Microsoft Client ID**
- check **Enable Google OAuth Support**
- enter the **Google Client ID**
- enter the **Google Secret**
- enter the **OAuth Success Name** used for the Google success page

Enter each credential value in this format:

```text
'client-string'
```

The surrounding single quotes are required because these values are stored in the template in quoted string form.

## Which guide should you use?

Use the Microsoft guide if you are working with accounts such as:

- Microsoft 365
- Office 365
- Outlook.com
- Hotmail.com
- Live.com

Use the Google / Gmail guide if you are working with accounts such as:

- Gmail.com
- Google Workspace hosted mailboxes
- other mailboxes that authenticate through Google OAuth

## Custom domains and manual OAuth selection

Some email addresses use a custom domain that does not clearly identify the real provider.

For example, a mailbox such as `user@yourcompany.com` may actually be hosted by:

- **Google Workspace**
- **Microsoft 365**

In cases like that, vuMailKit may not be able to determine from the domain alone that OAuth should be used.

If autodetect does not identify the mailbox as an OAuth account, but you know the mailbox is hosted by Google or Microsoft, use **Manual Configuration** in the wizard and select the appropriate sign-in method and server settings for the real provider.

This does not mean OAuth is unsupported for that mailbox. It only means the provider could not be safely identified from the email domain alone.

For provider-specific guidance, see:

- [Microsoft OAuth Setup](microsoft.md)
- [Google / Gmail OAuth Setup](google-gmail.md)

## Step-by-step guides

- [Microsoft OAuth Setup](microsoft.md)
- [Google / Gmail OAuth Setup](google-gmail.md)

## Related function category

The OAuth-related runtime functions are documented in the function reference here:

- [OAuth Related functions](../functions/index.md#oauth-related)

## Notes

These guides are written specifically for vuMailKit developers. Their purpose is to show what you need to create at the provider side and exactly how those values are entered into the vuMailKit template.

Provider portals change over time, so some screen labels may vary slightly from what you see today. The important part is to collect the correct credential values and enter them into vuMailKit in the format shown above.

[Home](../index.md) | [OAuth](index.md) | [Microsoft OAuth](microsoft.md) | [Google / Gmail OAuth](google-gmail.md)