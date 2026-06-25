
[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# Preferred Functions

For new work, use the preferred vuMailKit names and the profile-based workflow where possible.

Legacy vuMail function names remain supported so old applications can continue to build, but new code should normally use the clearer vuMailKit names shown in the main function reference.

## Normal setup and send workflow

| Task | Preferred page |
|---|---|
| Understand the normal wizard-plus-send application flow | [Recommended send flow with a stored profile](getting-started/recommended-send-flow.md) |
| Initialize vuMailKit licensing at startup | [vuMailKitInitialize](functions/vuMailKitInitialize.md) |
| Run setup/autodetect | [vuAutoDetectFillSettings](functions/vuAutoDetectFillSettings.md) |
| Send a setup test message | [vuAutoDetectSendTestMessage](functions/vuAutoDetectSendTestMessage.md) |
| Save the working profile | [vuSaveProfile](functions/vuSaveProfile.md) |
| Load the saved profile | [vuLoadProfile](functions/vuLoadProfile.md) |
| Send one message | [vuSendMail](functions/vuSendMail.md) |
| Send one message and wait for completion | [vuSendMailWait](functions/vuSendMailWait.md) |

## Preferred runtime setting names

| Area | Preferred pages | Legacy compatibility notes |
|---|---|---|
| SMTP server | [vuSmtpSetServer](functions/vuSmtpSetServer.md), [vuSmtpGetServer](functions/vuSmtpGetServer.md) | Legacy names include vuSetMailServer / vuGetMailServer. |
| SMTP security | [vuSmtpSetSecurity](functions/vuSmtpSetSecurity.md), [vuSmtpGetSecurity](functions/vuSmtpGetSecurity.md) | Legacy names include vuSetMailSecurity / vuGetMailSecurity. |
| From / Reply-To | [vuSmtpSetFromReplyTo](functions/vuSmtpSetFromReplyTo.md), [vuSmtpGetFromReplyTo](functions/vuSmtpGetFromReplyTo.md) | Legacy names include vuSetFromReplyTo / vuGetFromReplyTo. |
| SMTP auth mode | [vuSmtpSetAuthMode](functions/vuSmtpSetAuthMode.md), [vuSmtpGetAuthMode](functions/vuSmtpGetAuthMode.md) | Used when switching between password and OAuth modes. |
| Save folder | [vuGlobalsSetEmailFolder](functions/vuGlobalsSetEmailFolder.md), [vuGlobalsGetEmailFolder](functions/vuGlobalsGetEmailFolder.md) | Legacy names include vuSetSaveFolder / vuGetSaveFolder. |
| Legacy sent-mail CSV log | [vuLogSetFile](functions/vuLogSetFile.md), [vuLogGetFile](functions/vuLogGetFile.md), [vuClearMailLog](functions/vuClearMailLog.md) | Legacy names include vuSetMailLog / vuGetMailLog. |
| Diagnostics | [vuDiagnosticsSetFile](functions/vuDiagnosticsSetFile.md), [vuDiagnosticsEnable](functions/vuDiagnosticsEnable.md), [vuClearDiagnosticsLog](functions/vuClearDiagnosticsLog.md) | Diagnostics are separate from the legacy sent-mail CSV log. |

## OAuth helpers

For normal OAuth setup, the preferred workflow is the [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md). Configure provider values in the global template, import the wizard with CTRL+U, compile, run the wizard, and save the profile. The lower-level OAuth functions below are mainly for custom setup screens and special flows.

| Task | Preferred page |
|---|---|
| Use the normal zero-OAuth-code setup path | [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md) |
| Detect provider from email address | [vuOAuthDetectProviderFromEmail](functions/vuOAuthDetectProviderFromEmail.md) |
| Start OAuth login manually | [vuOAuthBeginLogin](functions/vuOAuthBeginLogin.md) |
| Launch verification manually | [vuOAuthLaunchUserVerification](functions/vuOAuthLaunchUserVerification.md) |
| Complete login manually | [vuOAuthCompleteLogin](functions/vuOAuthCompleteLogin.md) |
| Refresh stored tokens | [vuOAuthRefresh](functions/vuOAuthRefresh.md) |
| Clear stored OAuth state | [vuOAuthClear](functions/vuOAuthClear.md) |

## Template, mail merge, and Simple HTML helpers

| Task | Preferred page |
|---|---|
| Merge tokens in a string | [TokenMergeInString](functions/TokenMergeInString.md) |
| Merge tokens from one file into another | [TokenMergeInFile](functions/TokenMergeInFile.md) |
| Insert generated file content into a template file | [TokenMergeFileIntoFile](functions/TokenMergeFileIntoFile.md) |
| Turn Simple HTML mode on or off | [vuSetSimpleHTML](functions/vuSetSimpleHTML.md) |
| Set Simple HTML header image | [vuSetSimpleHTMLHeaderImage](functions/vuSetSimpleHTMLHeaderImage.md) |
| Set Simple HTML footer image | [vuSetSimpleHTMLFooterImage](functions/vuSetSimpleHTMLFooterImage.md) |
| Reset Simple HTML settings | [vuResetSimpleHTML](functions/vuResetSimpleHTML.md) |

## Migrating old vuMail code

Old function names remain listed here:

- [Legacy vuMail Function Names](functions/legacy-index.md)
- [About Function Names](functions/AboutFunctionNames.md)

The legacy pages are intentional migration helpers. New vuMailKit-only features, such as Simple HTML and TokenMerge helpers, do not have old vuMail legacy pages.

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)