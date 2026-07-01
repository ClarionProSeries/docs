---
title: "What's New in vuMailKit 1.1.0 build 157"
summary: "Current vuMailKit 1.1.0 build 157 documentation and product highlights."
description: "Current vuMailKit 1.1.0 build 157 documentation and product highlights for the Basic edition."
keywords: ["documentation", "what", "new", "vuMailKit", "Clarion", "version", "release", "Simple HTML", "TokenMerge", "logging"]
page_type: "release-notes"
last_updated: "2026-07-01"
---

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# What's New in vuMailKit 1.1.0 build 157

This page summarizes the current documentation and product highlights for **vuMailKit 1.1.0 build 157 Basic edition**.

Release date: **2026-07-01**.

## vuMailKit 1.1.0 build 157 at a glance

vuMailKit 1.1.0 build 157 is the current Basic edition release. It keeps the familiar vuMail-compatible send surface, but adds the practical pieces developers need for modern day-to-day use:

- Simple HTML email helpers for good-looking messages without hand-building the outer HTML wrapper.
- Easy body-positioned images for ordinary text messages by using Simple HTML with NormalizeBody on and the embed-attachments marker.
- TokenMerge helpers for template-based email and report-to-text insertion.
- Save-folder and legacy sent-mail CSV logging compatibility for normal sends, CSV sends, and setup/test sends.
- Clearer licensing/setup diagnostics using the private -9001, -9002, and -9003 range.
- Expanded Email Setup Wizard documentation, including CTRL+U import, provider autodetect, OAuth authorization, test send, and profile save.
- A copyable recommended send flow that checks for a stored profile, offers the wizard when needed, validates the recipient, sends, and shows useful diagnostics.
- A cleaner build 157 logging model that keeps sent-mail CSV/activity logging, saved .eml copies, and diagnostics logging separate.

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

With Simple HTML mode, you can send ordinary body content and let vuMailKit create the HTML wrapper while still using the normal MIME build path that creates a plain-text alternative. Ordinary body text can come from a TEXT control, TPS memo, customer note, generated report, or similar Clarion field; the hard-coded &lt;13,10&gt; examples are only for self-contained sample strings.

For body-positioned images in ordinary text, keep NormalizeBody on and place the embed-attachments marker where the images should appear. Pass local image files or remote http/https image URLs in the Attach parameter. vuMailKit replaces the marker with inline images and keeps the rest of the body as safe ordinary text.

Start here:

- [Send a Simple HTML email with a company logo](getting-started/send-a-simple-html-email-with-a-company-logo.md)


### Task guides now show real send code

The getting-started help pages for attachments, embedded images, CSV batch sending, external body files, and TokenMerge template sending now include copyable Clarion examples instead of high-level stub text.

These pages show the actual public API paths developers use:

- vuSendMailWait() with the Attach parameter for single files, multiple files, and wildcard attachments.
- vuSendMailFromFile() with the CSV field order FROM, TO, CC, BCC, SUBJECT, BODY, ATTACH.
- external body files passed in the Body parameter.
- Simple HTML header and footer images for branded emails.
- TokenMergeInString(), TokenMergeInFile(), and TokenMergeFileIntoFile() for template-based messages.

The examples also reinforce that TEXT controls, TPS memos, customer notes, generated reports, and similar fields can already contain normal line breaks. Developers only need the hard-coded &lt;13,10&gt; pattern when the sample itself is building a multi-line Clarion source string.


### Embedded images inside the email body

The [Send an embedded image](getting-started/send-an-embedded-image.md) guide now leads with the easiest body-positioned image path: Simple HTML with NormalizeBody on, ordinary TEXT-control or memo content, the embed-attachments marker, and local image files or remote http/https image URLs passed in Attach.

It also clearly separates body-positioned embedded images from Simple HTML header/footer images.

vuMailKit supports the legacy vuMail-compatible body-image patterns:

- local image paths in HTML img src values
- remote http and https image URLs in HTML img src values, downloaded and embedded at send time when safe
- image references inside external HTML body files
- existing cid image references, which are left unchanged
- the legacy embed-attachments marker that inserts local image files or remote http/https image URLs from the Attach parameter into the HTML body

The embed-attachments marker supports single local images, multiple local images, wildcard local image lists, remote http/https image URLs, and optional width= and height= settings. Images consumed by that marker are embedded in the body and are not also sent as normal attachments.

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

Diagnostics logging is intentionally separate from the legacy sent-mail CSV log. Build 157 also makes Normal versus Trace diagnostics easier to understand: Normal diagnostics keep the practical SMTP send timeline, while Trace diagnostics add lower-level profile, enqueue, message-build, TLS, and OAuth troubleshooting detail. Diagnostics-off runs should not append setup/profile/log-selection rows to the diagnostics file. The old SMTP protocol sidecar log is not part of normal customer-facing diagnostics.

- [vuDiagnosticsSetFile](functions/vuDiagnosticsSetFile.md) selects the diagnostics log file.
- [vuDiagnosticsEnable](functions/vuDiagnosticsEnable.md) enables diagnostics output.
- [vuSetDiagnosticsLevel](functions/vuSetDiagnosticsLevel.md) sets Normal versus Trace diagnostics detail.
- [vuClearDiagnosticsLog](functions/vuClearDiagnosticsLog.md) clears diagnostics logs.
- [vuDiagnosticsClearLogs](functions/vuDiagnosticsClearLogs.md) remains supported for the same diagnostics clear behavior.
- [vuClearMailLog](functions/vuClearMailLog.md) clears the legacy sent-mail CSV log only.

### Getting Started documentation

- Added task-based [Getting Started](getting-started/index.md) guides.
- The guides now take developers from the simplest send path to Simple HTML, then to external HTML and TokenMerge workflows.
- The docs call out the CTRL+U wizard import step and the compile step between adding the template and running the vuMailKit Email Setup Wizard so the setup flow is not presented as a single IDE-only step.

## Related pages

- [Getting Started](getting-started/index.md)
- [Send a Simple HTML email with a company logo](getting-started/send-a-simple-html-email-with-a-company-logo.md)
- [Send an embedded image](getting-started/send-an-embedded-image.md)
- [Use TokenMerge with email templates](getting-started/use-tokenmerge-with-email-templates.md)
- [Preferred Functions](preferred-index.md)
- [All functions](functions/index.md)
- [Version History](version-history.md)

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)
