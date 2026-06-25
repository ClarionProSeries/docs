
[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# vuMailKit

![vuMailKit](assets/images/vuMailKit270x90.png)

Basic edition documentation

Current Version: **vuMailKit 1.1.0**

Last Updated: 2026-06-25

Copyright (c) 2026 Clarion ProSeries by LANSRAD. All rights reserved.

This documentation covers the current vuMailKit 1.1.0 Basic edition function set and the supporting setup, deployment, and usage notes needed by Clarion developers.

Use the links below to browse the documentation.

- [Introduction](introduction.md)
- [Requirements](requirements.md)
- [Installation Instructions](install.md)
- [Registering the Template](template-registration.md)
- [Using the Template in Your Application](template-usage.md)
- [Migrating from vuMail](migrating.md)
- [Getting Started](getting-started/index.md)
- [OAuth Setup](oauth/index.md)
- [Browse Functions by Category](categories/index.md)
- [View All Functions](functions/index.md)
- [Deployment](deployment.md)
- [What's New](whatsnew.md)
- [Version History](version-history.md)
- [Support](support.md)
- [About ProHelp Studio](prohelpstudio.md)

## vuMailKit is your fastest path to sending an email

vuMailKit is designed so you do not have to learn the whole function library before you can send mail.

For a normal Clarion application, the short path is:

1. Add the vuMailKit global template to the EXE application.
2. Enter the developer license string in the template, inside single quotes.
3. Use the Clarion Utility Template command, CTRL+U, to import the [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md).
4. Compile the application.
5. Run the compiled EXE and use the **vuMailKit Email Setup Wizard** to test the account.
6. Save the working profile.
7. Call a send function such as [vuSendMail](functions/vuSendMail.md) or [vuSendMailWait](functions/vuSendMailWait.md). For normal Microsoft or Google OAuth accounts, the wizard handles authorization and profile saving, so your application does not need hand-coded OAuth flow code.

In a Clarion multi-DLL application, add the vuMailKit template to the EXE app, not to the supporting DLL apps. The EXE startup code initializes vuMailKit licensing for the process, and the runtime DLL can then be used from anywhere in the running program.

Hand-coded integrations must call [vuMailKitInitialize](functions/vuMailKitInitialize.md) once at EXE startup before calling send, setup, autodetect, or profile functions. If initialization is skipped, those calls return -9001 and [vuMailLastError](functions/vuMailLastError.md) reports a vuMailKit licensing/setup problem.

## Easier HTML email

If you want a cleaner-looking message, start with [Simple HTML mode](getting-started/send-a-simple-html-email-with-a-company-logo.md). You can turn it on, optionally set a header image and footer image, pass ordinary body text, and let vuMailKit create the HTML wrapper and plain-text alternative for you.

For more advanced work, use [TokenMerge](getting-started/use-tokenmerge-with-email-templates.md) with external files so your application can personalize templates, insert generated invoice or statement text, and send the final result without rebuilding a mail-merge engine yourself.

## Start here

| Page | Purpose |
|---|---|
| [Getting Started](getting-started/index.md) | Task-based guides for the quickest path to success. |
| [What most developers actually use](getting-started/what-most-developers-actually-use.md) | Explains the small set of calls most developers need day to day. |
| [First-time setup](getting-started/first-time-setup.md) | Add the template, import the vuMailKit Email Setup Wizard with CTRL+U, compile the EXE, test settings, and save a reusable profile. |
| [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md) | The vuMailKit Email Setup Wizard validates the address, detects server/OAuth settings, sends a test email, and saves the profile. |
| [Send your first email](getting-started/send-your-first-email.md) | Send mail after vuMailKit has been initialized and a working profile has been saved. |
| [Recommended send flow with a stored profile](getting-started/recommended-send-flow.md) | A copyable Clarion button-handler pattern for checking setup, offering the wizard, validating the recipient, sending, and showing useful diagnostics. |

## OAuth setup

If you plan to use Microsoft 365, Outlook.com, Google, or Gmail accounts with OAuth sign-in, the normal path is still the **vuMailKit Email Setup Wizard**. Configure the provider values in the global template, import the wizard with CTRL+U, and let the wizard handle provider detection, authorization, testing, and profile save. Start here:

- [OAuth Overview](oauth/index.md)
- [Microsoft OAuth Setup](oauth/microsoft.md)
- [Google / Gmail OAuth Setup](oauth/google-gmail.md)
- [OAuth function notes](functions-oauth.md)

## Function reference browsing

You can browse the function reference in several ways:

- [View All Functions](functions/index.md)
- [Browse by Category](categories/index.md)
- [Legacy vuMail Function Names](functions/legacy-index.md)
- [About Function Names](functions/AboutFunctionNames.md)
- [Preferred Functions for New Work](preferred-index.md)

## Common task guides

- [Recommended send flow with a stored profile](getting-started/recommended-send-flow.md)
- [Send an HTML email](getting-started/send-an-html-email.md)
- [Send a Simple HTML email with a company logo](getting-started/send-a-simple-html-email-with-a-company-logo.md)
- [Send an email from an external file](getting-started/send-an-email-from-an-external-file.md)
- [Use TokenMerge with email templates](getting-started/use-tokenmerge-with-email-templates.md)
- [Send a branded HTML email from a template](getting-started/send-a-branded-html-email-from-a-template.md)
- [Send a form-letter invoice email with an optional personal message](getting-started/send-a-form-letter-invoice-email-with-an-optional-personal-message.md)
- [Send attachments](getting-started/send-attachments.md)
- [Send an embedded image](getting-started/send-an-embedded-image.md)
- [Send a batch of emails from CSV](getting-started/send-a-batch-from-csv.md)

For the most up-to-date documentation:

- Online docs: https://clarionproseries.github.io/docs/vuMailKit/
- Source on GitHub: https://github.com/ClarionProSeries/docs/tree/main/vuMailKit

If the link above does not open in your help viewer, copy and paste this URL into your browser:

```text
https://clarionproseries.github.io/docs/vuMailKit/
```

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)