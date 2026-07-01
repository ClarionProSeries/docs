
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# What Most Developers Actually Use

vuMailKit includes many functions, but most developers do not need most of them for everyday mail sending.

A large part of the library exists for:

- legacy compatibility
- diagnostics
- setup support
- advanced control
- specialized workflows

For normal outbound email, start with the shortest path that works.

## The common workflow

In many cases, this is all you need:

1. Add the global template to the EXE app.
2. Enter the developer license string in single quotes.
3. Use CTRL+U to import the [vuMailKit Email Setup Wizard](vumailkit-email-setup-wizard.md).
4. Compile the application.
5. Run the compiled EXE.
6. Run the **vuMailKit Email Setup Wizard**, send a test email, and save the profile.
7. Call a send function.

Once the **vuMailKit Email Setup Wizard** succeeds and the profile is saved, the profile is ready to use.

That is a major simplification compared with older usage patterns where developers expected to keep filling in server settings manually. A normal Send button can then follow the [recommended send flow](recommended-send-flow.md): check for a saved profile, offer the wizard if needed, validate the recipient, send, and show useful diagnostics.

## What most developers usually touch first

The first things many developers care about are:

- [vuMailKit Email Setup Wizard](vumailkit-email-setup-wizard.md) setup
- saved profile behavior
- sending one email
- sending a good-looking Simple HTML email
- using an external text or HTML file
- personalizing content with TokenMerge
- attachments or embedded images, including body-positioned images and the legacy embed-attachments marker
- CSV-based batch sending

That is why the [Getting Started](index.md) section is task-based.

## Simple HTML is the first HTML path to try

Simple HTML mode can make an ordinary text body look like a clean HTML message without requiring you to build a full HTML wrapper.

For ordinary text from a TEXT control, TPS memo, customer note, generated report, or similar field, turn Simple HTML on, keep NormalizeBody on, and pass the text as-is. vuMailKit converts existing line breaks for HTML display.

If you also need images inside the message body, do not type raw HTML image tags into the normalized text. Put the embed-attachments marker where the images should appear and pass local image files or remote http/https image URLs in the Attach parameter. vuMailKit replaces the marker with inline images and still treats the rest of the body as ordinary text.

Start here:

- [Send a Simple HTML email with a company logo](send-a-simple-html-email-with-a-company-logo.md)
- [Send an embedded image](send-an-embedded-image.md)
- [Send an HTML email](send-an-html-email.md)

## TokenMerge is already built in

TokenMerge gives you reusable mail-merge behavior without making every developer reinvent it.

Use it when you want to replace tokens in memory, replace tokens while copying a template file to an output file, or insert generated text-file content into an HTML email template.

Start here:

- [Use TokenMerge with email templates](use-tokenmerge-with-email-templates.md)
- [Send a form-letter invoice email with an optional personal message](send-a-form-letter-invoice-email-with-an-optional-personal-message.md)

## When the larger function library matters

The broader function library becomes useful when you need:

- diagnostics
- compatibility behavior
- direct setting control
- POP3 retrieval
- OAuth flows
- deep autodetect
- profile management beyond the basic path

Those features matter, but they do not have to be learned first.

## Recommendation

Start with the simplest successful path first:

- [First-time setup](first-time-setup.md)
- [Send your first email](send-your-first-email.md)
- [Recommended send flow with a stored profile](recommended-send-flow.md)
- [Send a Simple HTML email with a company logo](send-a-simple-html-email-with-a-company-logo.md)
- [Send an embedded image](send-an-embedded-image.md)

Then branch out only when you need more.

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)