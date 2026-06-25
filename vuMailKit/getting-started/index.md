---
title: "Getting Started"
summary: "Start using vuMailKit quickly without having to learn the full function library first."
description: "Task-oriented getting started guides for vuMailKit, including setup, first email, Simple HTML, external files, TokenMerge, attachments, embedded images, and CSV sending."
keywords: ["vuMailKit", "Getting Started", "Clarion", "email", "Simple HTML", "HTML email", "TokenMerge", "attachments", "CSV"]
page_type: "overview"
last_updated: "2026-06-25"
---

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Getting Started

vuMailKit includes a large function library, but most real-world applications only need a small part of it at first.

The lower-level and legacy-compatible functions remain available for continuity, diagnostics, setup, and advanced control. You do not need to learn all of them before sending mail.

## Fastest path to a working send

For a normal Clarion application, start with this sequence:

1. Add the vuMailKit global template to the EXE application.
2. Enter the developer license string in the template, inside single quotes.
3. Use the Clarion Utility Template command, CTRL+U, to import the **vuMailKit Email Setup Wizard**.
4. Compile the application.
5. Run the compiled EXE.
6. Use the **vuMailKit Email Setup Wizard** to validate the address, detect provider settings, send a test email, and save the profile.
7. Call the send function you need.

In a multi-DLL application, put the vuMailKit template on the EXE app. The EXE initializes licensing once, and the runtime DLL can be used from code reached anywhere in the program.

Hand-coded integrations must call [vuMailKitInitialize](../functions/vuMailKitInitialize.md) once at EXE startup before setup, autodetect, profile, or send functions are used.

## Start here

| Guide | Purpose |
|---|---|
| [What most developers actually use](what-most-developers-actually-use.md) | Understand which parts of vuMailKit matter most in everyday use. |
| [First-time setup](first-time-setup.md) | Add the template, import the vuMailKit Email Setup Wizard with CTRL+U, compile the EXE, run the vuMailKit Email Setup Wizard, test the connection, and save a working profile. |
| [vuMailKit Email Setup Wizard](vumailkit-email-setup-wizard.md) | Let the vuMailKit Email Setup Wizard validate the address, detect server/OAuth settings, send a test email, and save the profile. |
| [Deployment and profiles](deployment-and-profiles.md) | Understand how profiles behave on individual machines, shared installs, and networks. |
| [Send your first email](send-your-first-email.md) | The simplest path to sending mail once licensing is initialized and a profile is saved. |
| [Recommended send flow with a stored profile](recommended-send-flow.md) | A copyable Clarion button-handler pattern for checking setup, offering the wizard, validating the recipient, sending, and showing useful diagnostics. |

## Simple HTML should usually be your first HTML option

If you want a good-looking HTML email, start with [Send a Simple HTML Email with a Company Logo](send-a-simple-html-email-with-a-company-logo.md).

Simple HTML mode lets you pass the message body and let vuMailKit create the HTML wrapper. Header and footer images are optional. The normal MIME build path still creates the plain-text alternative.

That means you can send a clean, branded email without first learning how to hand-build multipart HTML email.

## Common next steps

| Guide | Purpose |
|---|---|
| [Send an HTML email](send-an-html-email.md) | Start with Simple HTML, then move to external HTML files if you need more control. |
| [Send a Simple HTML Email with a Company Logo](send-a-simple-html-email-with-a-company-logo.md) | Let vuMailKit Basic wrap body content in a modest HTML container with an optional header image and footer image. |
| [Send an email from an external file](send-an-email-from-an-external-file.md) | Keep the message body outside your code and send it from a file. |
| [Use TokenMerge with email templates](use-tokenmerge-with-email-templates.md) | Replace placeholder tokens in memory, files, or generated file content before sending. |
| [Send attachments](send-attachments.md) | Attach files to outgoing email. |
| [Send an embedded image](send-an-embedded-image.md) | Include an inline image in an HTML email. |
| [Send a branded HTML email from a template](send-a-branded-html-email-from-a-template.md) | Reuse a logo, letterhead, and footer while merging changing message content into a separate output file. |
| [Send a form-letter invoice email with an optional personal message](send-a-form-letter-invoice-email-with-an-optional-personal-message.md) | Combine fixed letter text, token values, and generated invoice content in a branded HTML email. |
| [Send a batch of emails from CSV](send-a-batch-from-csv.md) | Send multiple messages from a CSV data source. |

## TokenMerge is built in

Many Clarion developers can write their own search-and-replace code, but vuMailKit already includes TokenMerge helpers.

You can replace tokens in a string, replace tokens while copying one file to another, or insert the contents of one file into a token location in another file. That last option is useful when a Clarion report writes invoice or statement detail to a text file and you want to insert that output into an email body.

## A note about profiles

Once the **vuMailKit Email Setup Wizard** runs successfully, sends a test email, and saves the profile, the profile is ready to use.

In most cases, you do not need to manually fill in server settings after that. For a fuller button-handler pattern that checks for the saved profile, offers the wizard when needed, validates the recipient, sends, and shows useful diagnostics, see [Recommended send flow with a stored profile](recommended-send-flow.md).

## Related pages

- [Function categories](../categories/index.md)
- [All functions](../functions/index.md)
- [OAuth Support](../oauth/index.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)
