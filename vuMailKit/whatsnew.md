---
title: "What's New in vuMailKit 1.1.0"
summary: "Current vuMailKit 1.1.0 documentation and product highlights."
description: "Current vuMailKit 1.1.0 documentation and product highlights for the Basic edition."
keywords: ["documentation", "what", "new", "vuMailKit", "Clarion", "version", "release", "Simple HTML", "TokenMerge", "logging"]
page_type: "release-notes"
last_updated: "2026-06-25"
---

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# What's New in vuMailKit 1.1.0

This page summarizes the current documentation and product highlights for **vuMailKit 1.1.0 Basic edition**.

## vuMailKit 1.1.0 at a glance

vuMailKit 1.1.0 is the current Basic edition release. It keeps the familiar vuMail-compatible send surface, but adds the practical pieces developers need for modern day-to-day use:

- Simple HTML email helpers for good-looking messages without hand-building the outer HTML wrapper.
- TokenMerge helpers for template-based email and report-to-text insertion.
- Save-folder and legacy sent-mail CSV logging compatibility for normal sends, CSV sends, and setup/test sends.
- Clearer licensing/setup diagnostics using the private -9001, -9002, and -9003 range.
- Expanded Email Setup Wizard documentation, including CTRL+U import, provider autodetect, OAuth authorization, test send, and profile save.
- A copyable recommended send flow that checks for a stored profile, offers the wizard when needed, validates the recipient, sends, and shows useful diagnostics.

## Recent highlights

### vuMailKit Email Setup Wizard visibility

The **vuMailKit Email Setup Wizard** is now documented as a first-class part of the normal setup path.

- After adding and configuring the global template, use the Clarion **Utility Template** command, **CTRL+U**, to import the vuMailKit Email Setup Wizard into the application.
- The vuMailKit Email Setup Wizard validates the email address before setup continues.
- It detects common provider/server settings so users usually do not need to know server names, ports, or TLS choices.
- When OAuth is enabled and required, it walks the user through the authorization process.
- It sends a test email and saves the working result into a reusable vuMailKit profile.
- For normal Microsoft or Google OAuth accounts, that profile lets send code run without hand-coded OAuth flow code.

Start here: [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md).

### Recommended stored-profile send flow

The new [Recommended send flow with a stored profile](getting-started/recommended-send-flow.md) guide shows a practical Clarion button-handler pattern that developers can copy and adapt. It checks whether a profile exists, offers to run the setup wizard when needed, validates the recipient, sends with a stored profile, and turns common return codes into useful messages.

This keeps the normal path simple: let the wizard create the profile, then send from your application without writing OAuth flow code.

### Easier startup and clearer licensing failures

- The docs now emphasize that the developer license belongs in the vuMailKit global template inside single quotes.
- The global template generates the startup call to [vuMailKitInitialize](functions/vuMailKitInitialize.md).
- In Clarion multi-DLL applications, the vuMailKit global template belongs on the EXE app, not on the supporting DLL apps.
- Private vuMailKit licensing/setup failures use the -9001, -9002, and -9003 range.
- Licensing/setup failures are reported as vuMailKit startup problems, not mail-server authentication problems.

### Simple HTML mode

Simple HTML mode is a major convenience feature for developers who want a well-dressed email without building a full HTML wrapper.

- [vuSetSimpleHTML](functions/vuSetSimpleHTML.md) turns Simple HTML mode on or off.
- [vuSetSimpleHTMLHeaderImage](functions/vuSetSimpleHTMLHeaderImage.md) adds an optional header image.
- [vuSetSimpleHTMLFooterImage](functions/vuSetSimpleHTMLFooterImage.md) adds an optional footer image.
- [vuSetSimpleHTMLNormalizeBody](functions/vuSetSimpleHTMLNormalizeBody.md) controls whether the body is treated as ordinary text or an HTML fragment.
- [vuResetSimpleHTML](functions/vuResetSimpleHTML.md) clears the runtime Simple HTML settings.

With Simple HTML mode, you can send ordinary body content and let vuMailKit create the HTML wrapper while still using the normal MIME build path that creates a plain-text alternative.

Start here:

- [Send a Simple HTML email with a company logo](getting-started/send-a-simple-html-email-with-a-company-logo.md)

### TokenMerge and template-based email

vuMailKit now includes TokenMerge helpers so developers do not have to rebuild the same mail-merge plumbing in every application.

- [TokenMergeInString](functions/TokenMergeInString.md) replaces tokens in memory.
- [TokenMergeInFile](functions/TokenMergeInFile.md) reads a template file and writes a merged output file.
- [TokenMergeFileIntoFile](functions/TokenMergeFileIntoFile.md) inserts the contents of one file into a token location in another file.

This supports practical workflows such as inserting Clarion report-to-text invoice detail into an HTML email body before sending the merged output file.

### Save-folder and legacy sent-mail logging compatibility

- [vuSetSaveFolder](functions/vuSetSaveFolder.md) and [vuGlobalsSetEmailFolder](functions/vuGlobalsSetEmailFolder.md) are aliases for the same runtime email-folder setting.
- Normal sends, CSV-file sends, and setup/autodetect test sends honor the same save-folder and one-shot save-name behavior.
- When the save folder is set, vuMailKit saves an outgoing .eml copy before the SMTP send attempt.
- [vuSetMailLog](functions/vuSetMailLog.md) and [vuLogSetFile](functions/vuLogSetFile.md) select the legacy sent-mail CSV log.
- Send attempts can be logged as success or failure, with the saved .eml path included when an outgoing copy was saved.

### Diagnostics logging is separate

Diagnostics logging is intentionally separate from the legacy sent-mail CSV log.

- [vuDiagnosticsSetFile](functions/vuDiagnosticsSetFile.md) selects the diagnostics log file.
- [vuDiagnosticsEnable](functions/vuDiagnosticsEnable.md) enables diagnostics output.
- [vuClearDiagnosticsLog](functions/vuClearDiagnosticsLog.md) clears diagnostics/protocol logs.
- [vuDiagnosticsClearLogs](functions/vuDiagnosticsClearLogs.md) remains supported for the same diagnostics clear behavior.
- [vuClearMailLog](functions/vuClearMailLog.md) clears the legacy sent-mail CSV log only.

### Getting Started documentation

- Added task-based [Getting Started](getting-started/index.md) guides.
- The guides now take developers from the simplest send path to Simple HTML, then to external HTML and TokenMerge workflows.
- The docs call out the CTRL+U wizard import step and the compile step between adding the template and running the vuMailKit Email Setup Wizard so the setup flow is not presented as a single IDE-only step.

## Related pages

- [Getting Started](getting-started/index.md)
- [Send a Simple HTML email with a company logo](getting-started/send-a-simple-html-email-with-a-company-logo.md)
- [Use TokenMerge with email templates](getting-started/use-tokenmerge-with-email-templates.md)
- [Preferred Functions](preferred-index.md)
- [All functions](functions/index.md)
- [Version History](version-history.md)

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)
