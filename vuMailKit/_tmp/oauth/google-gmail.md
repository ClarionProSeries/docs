
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

For vuMailKit Basic, you will need these Google values:

- **Google Client ID**
- **Google Secret**

You will also choose the name you want vuMailKit to display on the Google OAuth success page after the user completes authorization successfully.

Copy the Google values carefully. You will later place them into the vuMailKit template in quoted form.

## Where you enter them in vuMailKit

In your Clarion application, open the:

- **vuMailKit global template**
- **OAuth Settings** tab

Then:

- check **Enable Google OAuth Support**
- paste the Google Client ID into the **Google Client ID** field
- paste the Google Secret into the **Google Secret** field
- enter the name you want shown on the Google success page into the **OAuth Success Name** field

Enter each value in this format:

```text
'client-string'
```

Example:

```text
'123456789012-abcdefghijklmnopqrstuvwxyz.apps.googleusercontent.com'
'GOCSPX-abcdefghijklmnopqrstuvwxyz123456'
'My Application Name'
```

Do not remove the single quotes.

## What OAuth Success Name does

The **OAuth Success Name** value is used on the Google success page that the user sees after authorization completes successfully.

This lets you display your product name, company name, or application name on that page instead of a more generic label.

This setting is only for the success page display. It does not replace or change your Google Client ID or Google Secret.

## Custom domains and manual Google OAuth setup

Some Google-hosted mailboxes use a custom company domain instead of an address that obviously looks like Gmail.

For example, a mailbox such as `user@yourcompany.com` may still be hosted by Google Workspace even though the email address itself does not end in `gmail.com`.

In those cases, vuMailKit may not detect from the domain alone that the mailbox should use Google OAuth.

If autodetect does not identify the account as OAuth, but you know the mailbox is hosted by Google Workspace, use **Manual Configuration** in the wizard and select the Google OAuth sign-in method.

Typical Google Workspace settings are:

| Setting | Typical value |
|------|------|
| Outgoing server | `smtp.gmail.com` |
| Outgoing port | `587` |
| Outgoing security | `STARTTLS` |
| Incoming server | `imap.gmail.com` or `pop.gmail.com` |
| Incoming port | `993` for IMAP or `995` for POP3 |
| Incoming security | `SSL/TLS` |
| Sign-in method | **Google Sign-In** |

Use the mailbox owner's actual email address as the account name unless the hosted environment requires something different.

If the site uses non-standard settings, confirm them with the mailbox administrator.

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

### Important note for production applications

If you plan to publish a production application that uses Google OAuth for external users, Google may require more than just the OAuth client itself. Depending on the scopes used and how your application is published, you may also need items such as:

- a public homepage
- a privacy policy
- a terms of service page
- completed consent-screen or verification details on the Google side

These website and policy requirements are set by Google and are the responsibility of the application publisher, not vuMailKit itself.

If you want to provide direct access to those pages from inside your application, vuMailKit already includes a helper function for opening a URL in the user's default browser:

- [vuShellOpenUrl](../functions/vuShellOpenUrl.md)

This can be called from a button, menu option, or similar UI element in your application.

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
- not realizing that a production external app may also need a homepage, privacy policy, and terms page
- copying the wrong values
- forgetting to wrap both values in single quotes in the template
- enabling Google OAuth support in the template but leaving either field blank
- forgetting to enter the **OAuth Success Name** value you want shown on the Google success page
- assuming a custom domain mailbox is not Google-hosted just because the address does not end in `gmail.com`

## After setup

After entering the Google Client ID, Google Secret, and OAuth Success Name into the vuMailKit template:

- save the template settings
- regenerate and compile your application
- test the Google OAuth flow in your application

For related runtime functions, see:

- [OAuth Related functions](../functions/index.md#oauth-related)

[Home](../index.md) | [OAuth](index.md) | [Microsoft OAuth](microsoft.md)