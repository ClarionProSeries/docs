
[Home](../index.md) | [OAuth](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# OAuth Setup

This section explains how to prepare OAuth credentials for use with vuMailKit.

OAuth is commonly required for modern Microsoft 365, Outlook.com, Google, and Gmail accounts. vuMailKit includes built-in OAuth support and helper functions, but the normal Clarion developer path is the **vuMailKit Email Setup Wizard**, not hand-coded OAuth flow work.

## Normal path: zero OAuth code

For most applications, use this flow:

1. Add the vuMailKit global template to the EXE application.
2. Enter the vuMailKit developer license string in the template, inside single quotes.
3. Enter the Microsoft or Google provider values in the template, also in quoted form where required.
4. Use the Clarion **Utility Template** command, **CTRL+U**, to import the [vuMailKit Email Setup Wizard](../getting-started/vumailkit-email-setup-wizard.md).
5. Compile and run the EXE.
6. Run the **vuMailKit Email Setup Wizard**.
7. Let the wizard validate the email address, detect the provider and server settings, determine whether OAuth is needed, walk the user through authorization when required, send a test email, and save the working profile.

After the profile is saved, normal send functions can use that profile without your application writing a single line of OAuth flow code.

Use the OAuth function pages only when you are building a custom setup screen or another advanced/manual flow.

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

For example, a mailbox such as user@yourcompany.com may actually be hosted by:

- **Google Workspace**
- **Microsoft 365**

In cases like that, vuMailKit may not be able to determine from the domain alone that OAuth should be used.

If autodetect does not identify the mailbox as an OAuth account, but you know the mailbox is hosted by Google or Microsoft, use **Manual Configuration** in the [vuMailKit Email Setup Wizard](../getting-started/vumailkit-email-setup-wizard.md) and select the appropriate sign-in method and server settings for the real provider.

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
- [OAuth Functions](../functions-oauth.md)

## Notes

These guides are written specifically for vuMailKit developers. Their purpose is to show what you need to create at the provider side, exactly how those values are entered into the vuMailKit template, and how the wizard turns that setup into a reusable profile.

Provider portals change over time, so some screen labels may vary slightly from what you see today. The important part is to collect the correct credential values, enter them into vuMailKit in the format shown above, and let the wizard complete the user-facing setup.

[Home](../index.md) | [OAuth](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)