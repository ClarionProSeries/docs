
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMail Legacy Functions

Legacy vuMail function names are maintained for backward compatibility. Where a preferred modern function name exists, the legacy page points to it.

Important legacy note: several original vuMail text helpers are documented as Clarion LONG returns, but in the original PowerBASIC DLL that numeric value was actually the address of an internal C string buffer. That is why the legacy Clarion examples use these functions directly in assignments and MESSAGE() expressions. This behavior is preserved only for compatibility and is not the model for new APIs.

| Function | Description |
|---|---|
| [AboutFunctionNames](AboutFunctionNames.md) | Explains preferred function naming and how it maps to legacy vuMail names. |
| [AboutGlobalMemory](AboutGlobalMemory.md) | Explains vuMailKit runtime global memory, legacy registry behavior, and managed profile behavior. |
| [vuANSItoUTF8](vuANSItoUTF8.md) | Legacy ANSI-to-UTF8 conversion helper retained for compatibility. |
| [vuCloseWhenComplete](vuCloseWhenComplete.md) | Sets the legacy CloseWhenComplete runtime flag. |
| [vuExtractMailAddr](vuExtractMailAddr.md) | Legacy email-address parsing helper retained for compatibility. |
| [vuFailureNotice](vuFailureNotice.md) | Requests a delivery failure notice for the next sent email. |
| [vuGetCodePage](vuGetCodePage.md) | Legacy alias for [vuGlobalsGetCodePage](vuGlobalsGetCodePage.md). |
| [vuGetFromReplyTo](vuGetFromReplyTo.md) | Legacy alias for [vuSmtpGetFromReplyTo](vuSmtpGetFromReplyTo.md). |
| [vuGetMailLog](vuGetMailLog.md) | Legacy alias for [vuLogGetFile](vuLogGetFile.md). |
| [vuGetMailProxy](vuGetMailProxy.md) | Legacy alias for [vuNetGetProxy](vuNetGetProxy.md). |
| [vuGetMailSecurity](vuGetMailSecurity.md) | Legacy alias for [vuSmtpGetSecurity](vuSmtpGetSecurity.md). |
| [vuGetMailServer](vuGetMailServer.md) | Legacy alias for [vuSmtpGetServer](vuSmtpGetServer.md). |
| [vuGetSaveFolder](vuGetSaveFolder.md) | Legacy alias for [vuGlobalsGetEmailFolder](vuGlobalsGetEmailFolder.md). |
| [vuHighPriority](vuHighPriority.md) | Marks the next sent email as high priority. |
| [vuMailAppendCSV](vuMailAppendCSV.md) | Appends one mail row to the currently selected legacy CSV file. |
| [vuMailClient](vuMailClient.md) | Legacy default-mail-client helper retained for compatibility. |
| [vuMailCreateCSV](vuMailCreateCSV.md) | Creates or truncates a CSV file and selects it for vuMailAppendCSV(). |
| [vuMailErrorDisplay](vuMailErrorDisplay.md) | Enables or disables automatic verbose error message display. |
| [vuMailExport](vuMailExport.md) | Exports the currently loaded legacy message to an .eml file. |
| [vuMailGetGlobals](vuMailGetGlobals.md) | Legacy alias for [vuGlobalsLoad](vuGlobalsLoad.md). |
| [vuMailImport](vuMailImport.md) | Imports an .eml message file into the legacy in-process session. |
| [vuMailImportHeader](vuMailImportHeader.md) | Imports only message headers from an .eml file into the legacy session. |
| [vuMailLastError](vuMailLastError.md) | Gets the current last-error text using the legacy vuMail compatibility pattern using the legacy pointer-to-CString compatibility pattern. |
| [vuMailSaveGlobals](vuMailSaveGlobals.md) | Legacy alias for [vuGlobalsSave](vuGlobalsSave.md). |
| [vuMailSaveName](vuMailSaveName.md) | Sets the .eml file name used when saving the next sent email. |
| [vuMailSelectCSV](vuMailSelectCSV.md) | Selects an existing CSV file for subsequent vuMailAppendCSV() calls. |
| [vuMailStatus](vuMailStatus.md) | Returns send queue and background send status. |
| [vuMailSuccessDisplay](vuMailSuccessDisplay.md) | Enables or disables automatic success message display. |
| [vuMailTo](vuMailTo.md) | Opens the default mail client using a mailto: URI built from message fields. |
| [vuMailToA](vuMailToA.md) | Opens the default mail client using a mailto: URI and includes an attachment hint parameter. |
| [vuNoPasswordInRegistry](vuNoPasswordInRegistry.md) | Legacy alias for [vuGlobalsSetNoPasswordInRegistry](vuGlobalsSetNoPasswordInRegistry.md). |
| [vuPOP3AttachmentName](vuPOP3AttachmentName.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3Connect](vuPOP3Connect.md) | Opens a POP3 connection using host, user, and password values. |
| [vuPOP3Count](vuPOP3Count.md) | Returns the number of messages currently available in the POP3 mailbox. |
| [vuPOP3Delete](vuPOP3Delete.md) | Marks a POP3 message for deletion by message number. |
| [vuPOP3Disconnect](vuPOP3Disconnect.md) | Closes the active POP3 connection. |
| [vuPOP3GetDate](vuPOP3GetDate.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetFolder](vuPOP3GetFolder.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetFrom](vuPOP3GetFrom.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetHTMLText](vuPOP3GetHTMLText.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetMessageId](vuPOP3GetMessageId.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetPassword](vuPOP3GetPassword.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetPlainText](vuPOP3GetPlainText.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetReturnPath](vuPOP3GetReturnPath.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetServer](vuPOP3GetServer.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetSubject](vuPOP3GetSubject.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3GetUser](vuPOP3GetUser.md) | Legacy POP3 text getter retained for compatibility. |
| [vuPOP3HaveAttachments](vuPOP3HaveAttachments.md) | Reports whether the currently loaded POP3 message contains attachments. |
| [vuPOP3HaveHTMLText](vuPOP3HaveHTMLText.md) | Reports whether the currently loaded POP3 message contains an HTML body. |
| [vuPOP3HavePlainText](vuPOP3HavePlainText.md) | Reports whether the currently loaded POP3 message contains a plain-text body. |
| [vuPOP3LoadEmail](vuPOP3LoadEmail.md) | Loads a full POP3 message by message number into the current in-process session. |
| [vuPOP3LoadHeader](vuPOP3LoadHeader.md) | Loads POP3 headers for a message by message number into the current in-process session. |
| [vuPOP3SaveAttachment](vuPOP3SaveAttachment.md) | Saves a named attachment from the loaded POP3 message into the configured POP3 folder. |
| [vuPOP3SaveAttachments](vuPOP3SaveAttachments.md) | Saves all attachments from the loaded POP3 message into the configured POP3 folder. |
| [vuPOP3SetFolder](vuPOP3SetFolder.md) | Sets the POP3 save folder in memory. |
| [vuPOP3SetPassword](vuPOP3SetPassword.md) | Sets the POP3 password in memory. |
| [vuPOP3SetServer](vuPOP3SetServer.md) | Sets the POP3 server name in memory. |
| [vuPOP3SetUser](vuPOP3SetUser.md) | Sets the POP3 user name in memory. |
| [vuPOP3Size](vuPOP3Size.md) | Returns the size, in bytes, of a POP3 message by message number. |
| [vuReadUCodeFile](vuReadUCodeFile.md) | Legacy UCode file-read helper retained for compatibility. |
| [vuRequestReceipt](vuRequestReceipt.md) | Requests a return receipt for the next sent email. |
| [vuSendMail](vuSendMail.md) | Queues one email for background SMTP delivery. |
| [vuSendMailFromFile](vuSendMailFromFile.md) | Queues outbound emails from a CSV file. |
| [vuSendMailWait](vuSendMailWait.md) | Queues one email and waits for SMTP processing to finish. |
| [vuSetCodePage](vuSetCodePage.md) | Legacy alias for [vuGlobalsSetCodePage](vuGlobalsSetCodePage.md). |
| [vuSetFromReplyTo](vuSetFromReplyTo.md) | Legacy alias for [vuSmtpSetFromReplyTo](vuSmtpSetFromReplyTo.md). |
| [vuSetImageSize](vuSetImageSize.md) | Legacy image-size hint setter retained for compatibility. |
| [vuSetMailLog](vuSetMailLog.md) | Legacy alias for [vuLogSetFile](vuLogSetFile.md). |
| [vuSetMailProxy](vuSetMailProxy.md) | Legacy alias for [vuNetSetProxy](vuNetSetProxy.md). |
| [vuSetMailSecurity](vuSetMailSecurity.md) | Legacy alias for [vuSmtpSetSecurity](vuSmtpSetSecurity.md). |
| [vuSetMailServer](vuSetMailServer.md) | Legacy alias for [vuSmtpSetServer](vuSmtpSetServer.md). |
| [vuSetSaveFolder](vuSetSaveFolder.md) | Legacy alias for [vuGlobalsSetEmailFolder](vuGlobalsSetEmailFolder.md). |
| [vuUTF8toANSI](vuUTF8toANSI.md) | Legacy UTF8-to-ANSI conversion helper retained for compatibility. |
| [vuValidateMailAddr](vuValidateMailAddr.md) | Validates a practical real-world internet email address, rejects obvious malformed values, and flags certain typo-like domains as suspicious. |
| [vuViewMail](vuViewMail.md) | Opens an existing mail file using the Windows shell-associated application. |

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)