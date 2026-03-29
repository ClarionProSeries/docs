
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailKit Functions

This documentation has been written for modern development using the full vuMailKit library of functions and modern naming standards. These are the preferred function names for new development.

The Legacy names from the old vuMail functions remain supported and are listed on the Legacy functions page. If you look up a function with the old name, it will refer you to the preferred name page.

## About

| Function | Description |
|---|---|
| [AboutFunctionNames](AboutFunctionNames.md) | Explains preferred function naming and how it maps to legacy vuMail names. |
| [AboutGlobalMemory](AboutGlobalMemory.md) | Explains vuMailKit runtime global memory, legacy registry behavior, and managed profile behavior. |

## Global Variable Related

| Function | Description |
|---|---|
| [vuGlobalsLoad](vuGlobalsLoad.md) | Loads vuMailKit global settings into active runtime memory. |
| [vuGlobalsSave](vuGlobalsSave.md) | Saves active runtime settings using the current persistence model. |
| [vuGlobalsSetCodePage](vuGlobalsSetCodePage.md) | Sets the CodePage value used by vuMailKit. |
| [vuGlobalsGetCodePage](vuGlobalsGetCodePage.md) | Gets the CodePage value used by vuMailKit. |
| [vuGlobalsSetEmailFolder](vuGlobalsSetEmailFolder.md) | Sets the folder where vuMailKit can save email files. |
| [vuGlobalsGetEmailFolder](vuGlobalsGetEmailFolder.md) | Gets the folder where vuMailKit can save email files. |
| [vuGlobalsSetNoPasswordInRegistry](vuGlobalsSetNoPasswordInRegistry.md) | Controls whether the SMTP password is saved in the registry. |

## Logging

| Function | Description |
|---|---|
| [vuLogSetFile](vuLogSetFile.md) | Sets the mail log file path. |
| [vuLogGetFile](vuLogGetFile.md) | Gets the mail log file path. |
| [vuDiagnosticsEnable](vuDiagnosticsEnable.md) | Enables diagnostics logging. |
| [vuDiagnosticsDisable](vuDiagnosticsDisable.md) | Disables diagnostics logging. |
| [vuDiagnosticsSetFile](vuDiagnosticsSetFile.md) | Sets the diagnostics log file path. |
| [vuDiagnosticsGetFile](vuDiagnosticsGetFile.md) | Gets the diagnostics log file path. |
| [vuDiagnosticsClearLogs](vuDiagnosticsClearLogs.md) | Deletes the current diagnostics and protocol log files. |
| [vuResetStoredSettings](vuResetStoredSettings.md) | Clears stored vuMailKit settings, profiles, and OAuth state. |
| [vuCleanupLegacyRegistry](vuCleanupLegacyRegistry.md) | Deletes legacy registry settings after managed migration is verified. |
| [vuLoadProfile](vuLoadProfile.md) | Loads the internal default managed profile into active runtime memory. |
| [vuLoadProfileEx](vuLoadProfileEx.md) | Loads a named managed profile into active runtime memory. Pro and Back Office only. |
| [vuSaveProfile](vuSaveProfile.md) | Saves active runtime memory into the internal default managed profile. |
| [vuSaveProfileEx](vuSaveProfileEx.md) | Saves active runtime memory into a named managed profile. Pro and Back Office only. |

## Mailing Related

| Function | Description |
|---|---|
| [vuCloseWhenComplete](vuCloseWhenComplete.md) | Sets the legacy CloseWhenComplete runtime flag. |
| [vuFailureNotice](vuFailureNotice.md) | Requests a failure notice (delivery failure notification) for the next sent email. |
| [vuGetFromReplyTo](vuGetFromReplyTo.md) | Gets the default From and Reply-To email addresses for outgoing mail. |
| [vuGetMailLog](vuGetMailLog.md) | Gets the current mail log file path. |
| [vuGetMailProxy](vuGetMailProxy.md) | Gets the proxy server name and port used by vuMailKit. |
| [vuGetMailSecurity](vuGetMailSecurity.md) | Gets SMTP user, password, security type, and SSL flag. |
| [vuGetMailServer](vuGetMailServer.md) | Gets the outbound SMTP server name and port. |
| [vuGetSaveFolder](vuGetSaveFolder.md) | Gets the folder used for saving mail files. |
| [vuHighPriority](vuHighPriority.md) | Marks the next sent email as high priority. |
| [vuMailAppendCSV](vuMailAppendCSV.md) | Appends one mail row to the currently selected legacy CSV file. |
| [vuMailClient](vuMailClient.md) | Returns the default mail client name from the Windows registry. |
| [vuMailCreateCSV](vuMailCreateCSV.md) | Creates or truncates a CSV file and selects it for vuMailAppendCSV(). |
| [vuMailErrorDisplay](vuMailErrorDisplay.md) | Automatically displays a verbose error message when a send fails. |
| [vuMailExport](vuMailExport.md) | Exports the currently loaded legacy message to an .eml file. |
| [vuSetFromReplyTo](vuSetFromReplyTo.md) | Sets default From and Reply-To email addresses for outgoing mail. |
| [vuMailImport](vuMailImport.md) | Imports an .eml message file into the legacy in-process session. |
| [vuMailImportHeader](vuMailImportHeader.md) | Imports only message headers from an .eml file into the legacy session. |
| [vuMailLastError](vuMailLastError.md) | Returns the last verbose error message text. |
| [vuMailSaveName](vuMailSaveName.md) | Sets the filename used when saving the next sent email as an .eml file. |
| [vuMailSelectCSV](vuMailSelectCSV.md) | Selects an existing CSV file for vuMailAppendCSV(). |
| [vuMailStatus](vuMailStatus.md) | Returns send queue and background send status. |
| [vuMailSuccessDisplay](vuMailSuccessDisplay.md) | Displays a success message each time an email is sent successfully. |
| [vuMailTo](vuMailTo.md) | Opens the default mail client with To/Cc/Bcc/Subject/Body fields. |
| [vuMailToA](vuMailToA.md) | Opens the default mail client with To/Cc/Bcc/Subject/Body plus attachment hint. |
| [vuRequestReceipt](vuRequestReceipt.md) | Requests a return receipt for the next sent email. |
| [vuSendMail](vuSendMail.md) | Queues one outbound email for background SMTP delivery. |
| [vuSendMailFromFile](vuSendMailFromFile.md) | Queues outbound emails from CSV rows. |
| [vuSendMailWait](vuSendMailWait.md) | Queues one outbound email and waits for completion. |
| [vuSetMailProxy](vuSetMailProxy.md) | Sets the proxy server name and port used by vuMailKit. |
| [vuSetMailSecurity](vuSetMailSecurity.md) | Sets SMTP user, password, security type, and SSL flag. |
| [vuSetMailServer](vuSetMailServer.md) | Sets the outbound SMTP server name and port. |

| [vuValidateMailAddr](vuValidateMailAddr.md) | Validates a practical internet email address, rejects malformed values, and can flag suspicious typo-like domains. |
| [vuViewMail](vuViewMail.md) | Opens a mail file using the default shell-associated application. |

## Network Related

| Function | Description |
|---|---|
| [vuNetSetProxy](vuNetSetProxy.md) | Sets the proxy server name and port used by vuMailKit. |
| [vuNetGetProxy](vuNetGetProxy.md) | Gets the proxy server name and port used by vuMailKit. |


## Autodetect and Setup

| Function | Description |
|---|---|
| [vuAutoDetectFillSettings](vuAutoDetectFillSettings.md) | Runs the full deep-scan autodetect pipeline and fills provider settings. |
| [vuAutoDetectFillSettingsFast](vuAutoDetectFillSettingsFast.md) | Runs the fast first-pass autodetect pipeline for responsive setup screens. |
| [vuAutoDetectFillSettingsDeep](vuAutoDetectFillSettingsDeep.md) | Runs the explicit deep-scan autodetect pipeline when the user requests a broader search. |
| [vuAutoDetectStartDeepScan](vuAutoDetectStartDeepScan.md) | Starts an asynchronous deep autodetect job and returns a scan handle. |
| [vuAutoDetectPollDeepScan](vuAutoDetectPollDeepScan.md) | Polls the state, stage, and status text for an asynchronous deep autodetect job. |
| [vuAutoDetectCancelDeepScan](vuAutoDetectCancelDeepScan.md) | Requests cancellation of an asynchronous deep autodetect job. |
| [vuAutoDetectGetDeepScanResult](vuAutoDetectGetDeepScanResult.md) | Copies final results from a completed asynchronous deep autodetect job. |
| [vuAutoDetectReleaseDeepScan](vuAutoDetectReleaseDeepScan.md) | Releases the stored state for an asynchronous deep autodetect job. |
| [vuAutoDetectTestSettings](vuAutoDetectTestSettings.md) | Tests detected server settings without sending mail. |
| [vuAutoDetectSendTestMessage](vuAutoDetectSendTestMessage.md) | Sends a temporary test message using the outgoing settings only. |
| [vuAutoDetectSendTestMessageEx](vuAutoDetectSendTestMessageEx.md) | Sends a temporary test message and includes outgoing plus incoming setup details in the message body. |

## OAuth Related

| Function | Description |
|---|---|
| [vuOAuthSetProvider](vuOAuthSetProvider.md) | Sets the default OAuth provider name used by helper flows. |
| [vuOAuthGetProvider](vuOAuthGetProvider.md) | Gets the default OAuth provider name from global settings. |
| [vuOAuthDetectProviderFromEmail](vuOAuthDetectProviderFromEmail.md) | Detects OAuth provider/auth mode from an email address. |
| [vuOAuthBeginLogin](vuOAuthBeginLogin.md) | Starts an OAuth login flow and returns callback/device text. |
| [vuOAuthGetDeviceInfo](vuOAuthGetDeviceInfo.md) | Returns device verification URL/code from the last BeginLogin. |
| [vuOAuthLaunchUserVerification](vuOAuthLaunchUserVerification.md) | Launches user verification UI/browser for an OAuth flow. |
| [vuOAuthCompleteLogin](vuOAuthCompleteLogin.md) | Completes OAuth login using callback or verification data. |
| [vuOAuthStatus](vuOAuthStatus.md) | Returns OAuth status text for a provider/account pair. |
| [vuOAuthRefresh](vuOAuthRefresh.md) | Refreshes OAuth tokens for a provider/account pair. |
| [vuOAuthClear](vuOAuthClear.md) | Clears stored OAuth state/tokens for a provider/account pair. |

## Licensing

| Function | Description |
|---|---|
| [vuMailKitInitialize](vuMailKitInitialize.md) | Initializes vuMailKit licensing for the current process. Call once at EXE startup before send, autodetect, or profile operations. |
| [vuMailKitGetLicenseInfo](vuMailKitGetLicenseInfo.md) | Returns a diagnostic text summary of the current license state, tier, and demo flag. |

## POP3 Related

| Function | Description |
|---|---|
| [vuPOP3SetAuthMode](vuPOP3SetAuthMode.md) | Sets the POP3 authentication mode value used at connect time. |
| [vuPOP3GetAuthMode](vuPOP3GetAuthMode.md) | Gets the configured POP3 authentication mode value. |
| [vuPOP3AttachmentName](vuPOP3AttachmentName.md) | Returns the attachment filename by index. |
| [vuPOP3Connect](vuPOP3Connect.md) | Connects and authenticates to the POP3 server. |
| [vuPOP3Count](vuPOP3Count.md) | Returns the number of available POP3 messages. |
| [vuPOP3GetDate](vuPOP3GetDate.md) | Returns the Date header value from the loaded POP3 message. |
| [vuPOP3GetFrom](vuPOP3GetFrom.md) | Returns the From header value from the loaded POP3 message. |
| [vuPOP3GetFolder](vuPOP3GetFolder.md) | Gets the POP3 folder used for receiving email. |
| [vuPOP3SetFolder](vuPOP3SetFolder.md) | Sets the POP3 folder used for receiving email. |
| [vuPOP3GetHTMLText](vuPOP3GetHTMLText.md) | Returns the HTML body from the loaded POP3 message. |
| [vuPOP3HaveAttachments](vuPOP3HaveAttachments.md) | Reports whether the loaded POP3 message has attachments. |
| [vuPOP3HaveEmbedded](vuPOP3HaveEmbedded.md) | Reports whether the loaded POP3 message has embedded parts. |
| [vuPOP3HaveHTMLText](vuPOP3HaveHTMLText.md) | Reports whether the loaded POP3 message has an HTML body. |
| [vuPOP3HavePlainText](vuPOP3HavePlainText.md) | Reports whether the loaded POP3 message has a plain-text body. |
| [vuPOP3LoadEmail](vuPOP3LoadEmail.md) | Loads a full POP3 message into the current session. |
| [vuPOP3LoadHeader](vuPOP3LoadHeader.md) | Loads headers for a POP3 message into the current session. |
| [vuPOP3GetMessageId](vuPOP3GetMessageId.md) | Returns the Message-ID header value from the loaded POP3 message. |
| [vuPOP3GetPassword](vuPOP3GetPassword.md) | Gets the POP3 password used for receiving email. |
| [vuPOP3SetPassword](vuPOP3SetPassword.md) | Sets the POP3 password used for receiving email. |
| [vuPOP3GetPlainText](vuPOP3GetPlainText.md) | Returns the plain-text body from the loaded POP3 message. |
| [vuPOP3Delete](vuPOP3Delete.md) | Marks a POP3 message number for deletion. |
| [vuPOP3Disconnect](vuPOP3Disconnect.md) | Closes the active POP3 connection. |
| [vuPOP3GetReturnPath](vuPOP3GetReturnPath.md) | Returns the Return-Path header value from the loaded POP3 message. |
| [vuPOP3SaveAttachment](vuPOP3SaveAttachment.md) | Saves one named attachment from the loaded POP3 message. |
| [vuPOP3SaveAttachments](vuPOP3SaveAttachments.md) | Saves all attachments from the loaded POP3 message. |
| [vuPOP3SaveEmbedded](vuPOP3SaveEmbedded.md) | Saves one named embedded content item from the loaded POP3 message. |
| [vuPOP3SaveEmbeddedOne](vuPOP3SaveEmbeddedOne.md) | Saves one embedded content item by index from the loaded POP3 message. |
| [vuPOP3GetServer](vuPOP3GetServer.md) | Gets the POP3 server used for receiving email. |
| [vuPOP3SetServer](vuPOP3SetServer.md) | Sets the POP3 server used for receiving email. |
| [vuPOP3Size](vuPOP3Size.md) | Returns the size in bytes for a POP3 message number. |
| [vuPOP3GetSubject](vuPOP3GetSubject.md) | Returns the Subject header value from the loaded POP3 message. |
| [vuPOP3GetUser](vuPOP3GetUser.md) | Gets the POP3 user used for receiving email. |
| [vuPOP3SetUser](vuPOP3SetUser.md) | Sets the POP3 user used for receiving email. |
| [vuPOP3EmbeddedCID](vuPOP3EmbeddedCID.md) | Returns the CID for an embedded content item by index. |
| [vuPOP3EmbeddedName](vuPOP3EmbeddedName.md) | Returns the name for an embedded content item by index. |

## SMTP Related

| Function | Description |
|---|---|
| [vuSMTPGetAuthMode](vuSmtpGetAuthMode.md) | Gets current SMTP auth mode (`0` password, `1` OAuth). |
| [vuSMTPSetAuthMode](vuSmtpSetAuthMode.md) | Sets SMTP auth mode (`0` password, non-zero OAuth). |
| [vuSMTPGetFromReplyTo](vuSmtpGetFromReplyTo.md) | Gets default From and Reply-To email addresses for outgoing mail. |
| [vuSMTPSetFromReplyTo](vuSmtpSetFromReplyTo.md) | Sets default From and Reply-To email addresses for outgoing mail. |
| [vuSMTPGetSecurity](vuSmtpGetSecurity.md) | Gets SMTP user, password, security type, and SSL flag. |
| [vuSMTPSetSecurity](vuSmtpSetSecurity.md) | Sets SMTP user, password, security type, and SSL flag. |
| [vuSMTPGetServer](vuSmtpGetServer.md) | Gets the outbound SMTP server name and port. |
| [vuSMTPSetServer](vuSmtpSetServer.md) | Sets the outbound SMTP server name and port. |
| [vuSetMailServerOAuth](vuSetMailServerOAuth.md) | Sets OAuth-specific SMTP server name and port. |

## UI Helpers

| Function | Description |
|---|---|
| [vuPasswordInit](vuPasswordInit.md) | Initializes a Clarion password entry control for managed cue text, eye-button creation, and show/hide behavior. |
| [vuPasswordToggle](vuPasswordToggle.md) | Toggles a managed password control between masked and visible mode. |
| [vuPasswordCleanup](vuPasswordCleanup.md) | Removes managed password-control behavior and destroys the generated eye button. |

## Utilities

| Function | Description |
|---|---|
| [vuANSItoUTF8](vuANSItoUTF8.md) | Converts ANSI text to a byte-preserving UTF-8 encoded legacy string. |
| [vuExtractMailAddr](vuExtractMailAddr.md) | Extracts the first email address found in input text. |
| [vuGetUCodeFile](vuGetUCodeFile.md) | Returns the default UCode.txt compatibility file path. |
| [vuReadUCodeFile](vuReadUCodeFile.md) | Reads UTF-8 text from a specified UCode file path. |
| [vuShellOpenUrl](vuShellOpenUrl.md) | Opens a URL with shell/browser and returns diagnostics. |
| [vuUTF8toANSI](vuUTF8toANSI.md) | Converts byte-preserving UTF-8 input to decoded text. |

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)