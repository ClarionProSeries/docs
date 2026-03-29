
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMail Legacy Functions

Legacy vuMail function names are maintained for backward compatibility. Each page links back to the preferred vuMailKit function.

Important legacy note: several original vuMail text helpers are documented as Clarion `LONG` returns, but in the original PowerBasic DLL that numeric value was actually the address of an internal C string buffer. That is why the legacy Clarion examples use these functions directly in assignments and `MESSAGE()` expressions. This behavior is preserved only for compatibility and is not the model for new APIs.

| Function | Description |
|---|---|
| [AboutFunctionNames](AboutFunctionNames.md) | Explains preferred function naming and how it maps to legacy vuMail names. |
| [AboutGlobalMemory](AboutGlobalMemory.md) | Explains vuMailKit runtime global memory, legacy registry behavior, and managed profile behavior. |
| [vuANSItoUTF8](vuANSItoUTF8.md) | Converts ANSI text to a byte-preserving UTF-8 encoded legacy string. |
| [vuCloseWhenComplete](vuCloseWhenComplete.md) | Sets the legacy CloseWhenComplete runtime flag. |
| [vuExtractMailAddr](vuExtractMailAddr.md) | Extracts the first email address found in input text. |
| [vuFailureNotice](vuFailureNotice.md) | Requests a failure notice (delivery failure notification) for the next sent email. |
| [vuGetCodePage](vuGetCodePage.md) | Legacy alias for vuGlobalsGetCodePage(). (Preferred: [vuGlobalsGetCodePage](vuGlobalsGetCodePage.md)) |
| [vuGetFromReplyTo](vuGetFromReplyTo.md) | Legacy alias for vuSmtpGetFromReplyTo(). (Preferred: [vuSmtpGetFromReplyTo](vuSmtpGetFromReplyTo.md)) |
| [vuGetMailLog](vuGetMailLog.md) | Gets the mail log file path. (Preferred: [vuLogGetFile](vuLogGetFile.md)) |
| [vuGetMailProxy](vuGetMailProxy.md) | Legacy alias for vuNetGetProxy(). (Preferred: [vuNetGetProxy](vuNetGetProxy.md)) |
| [vuGetMailSecurity](vuGetMailSecurity.md) | Legacy alias for vuSmtpGetSecurity(). (Preferred: [vuSmtpGetSecurity](vuSmtpGetSecurity.md)) |
| [vuGetMailServer](vuGetMailServer.md) | Gets the outbound SMTP server name and port. (Preferred: [vuSmtpGetServer](vuSmtpGetServer.md)) |
| [vuGetSaveFolder](vuGetSaveFolder.md) | Legacy alias for vuGlobalsGetEmailFolder(). (Preferred: [vuGlobalsGetEmailFolder](vuGlobalsGetEmailFolder.md)) |
| [vuGetUCodeFile](vuGetUCodeFile.md) | Returns the default UCode.txt compatibility file path. |
| [vuHighPriority](vuHighPriority.md) | Marks the next sent email as high priority. |
| [vuMailAppendCSV](vuMailAppendCSV.md) | Appends one mail row to the currently selected legacy CSV file. |
| [vuMailClient](vuMailClient.md) | Returns the default mail client name from the Windows registry. |
| [vuMailCreateCSV](vuMailCreateCSV.md) | Creates or truncates a CSV file and selects it for vuMailAppendCSV(). |
| [vuMailErrorDisplay](vuMailErrorDisplay.md) | Automatically displays a verbose error message when a send fails. |
| [vuMailExport](vuMailExport.md) | Exports the currently loaded legacy message to an .eml file. |
| [vuMailGetGlobals](vuMailGetGlobals.md) | Loads vuMailKit global settings into active runtime memory. (Preferred: [vuGlobalsLoad](vuGlobalsLoad.md)) |
| [vuMailImport](vuMailImport.md) | Imports an .eml message file into the legacy in-process session. |
| [vuMailImportHeader](vuMailImportHeader.md) | Imports only message headers from an .eml file into the legacy session. |
| [vuMailLastError](vuMailLastError.md) | Returns the last verbose error message text. |
| [vuMailSaveGlobals](vuMailSaveGlobals.md) | Saves active runtime settings using the current persistence model. (Preferred: [vuGlobalsSave](vuGlobalsSave.md)) |
| [vuMailSaveName](vuMailSaveName.md) | Sets the filename used when saving the next sent email as an .eml file. |
| [vuMailSelectCSV](vuMailSelectCSV.md) | Selects an existing CSV file for vuMailAppendCSV(). |
| [vuMailStatus](vuMailStatus.md) | Returns send queue and background send status. |
| [vuMailSuccessDisplay](vuMailSuccessDisplay.md) | Displays a success message each time an email is sent successfully. |
| [vuMailTo](vuMailTo.md) | Opens the default mail client with To/Cc/Bcc/Subject/Body fields. |
| [vuMailToA](vuMailToA.md) | Opens the default mail client with To/Cc/Bcc/Subject/Body plus attachment hint. |
| [vuNoPasswordInRegistry](vuNoPasswordInRegistry.md) | Controls whether the SMTP password is saved in the registry. (Preferred: [vuGlobalsSetNoPasswordInRegistry](vuGlobalsSetNoPasswordInRegistry.md)) |
| [vuPOP3GetFolder](vuPOP3GetFolder.md) | Gets the POP3 folder used for receiving email. |
| [vuPOP3GetPassword](vuPOP3GetPassword.md) | Gets the POP3 password used for receiving email. |
| [vuPOP3GetServer](vuPOP3GetServer.md) | Gets the POP3 server used for receiving email. |
| [vuPOP3GetUser](vuPOP3GetUser.md) | Gets the POP3 user used for receiving email. |
| [vuPOP3SetFolder](vuPOP3SetFolder.md) | Sets the POP3 folder used for receiving email. |
| [vuPOP3SetPassword](vuPOP3SetPassword.md) | Sets the POP3 password used for receiving email. |
| [vuPOP3SetServer](vuPOP3SetServer.md) | Sets the POP3 server used for receiving email. |
| [vuPOP3SetUser](vuPOP3SetUser.md) | Sets the POP3 user used for receiving email. |
| [vuReadUCodeFile](vuReadUCodeFile.md) | Reads UTF-8 text from a specified UCode file path. |
| [vuRequestReceipt](vuRequestReceipt.md) | Requests a return receipt for the next sent email. |
| [vuSetCodePage](vuSetCodePage.md) | Legacy alias for vuGlobalsSetCodePage(). (Preferred: [vuGlobalsSetCodePage](vuGlobalsSetCodePage.md)) |
| [vuSetFromReplyTo](vuSetFromReplyTo.md) | Legacy alias for vuSmtpSetFromReplyTo(). (Preferred: [vuSmtpSetFromReplyTo](vuSmtpSetFromReplyTo.md)) |
| [vuSetMailLog](vuSetMailLog.md) | Sets the mail log file path. (Preferred: [vuLogSetFile](vuLogSetFile.md)) |
| [vuSetMailProxy](vuSetMailProxy.md) | Legacy alias for vuNetSetProxy(). (Preferred: [vuNetSetProxy](vuNetSetProxy.md)) |
| [vuSetMailSecurity](vuSetMailSecurity.md) | Legacy alias for vuSmtpSetSecurity(). (Preferred: [vuSmtpSetSecurity](vuSmtpSetSecurity.md)) |
| [vuSetMailServer](vuSetMailServer.md) | Sets the outbound SMTP server name and port. (Preferred: [vuSmtpSetServer](vuSmtpSetServer.md)) |
| [vuSetSaveFolder](vuSetSaveFolder.md) | Legacy alias for vuGlobalsSetEmailFolder(). (Preferred: [vuGlobalsSetEmailFolder](vuGlobalsSetEmailFolder.md)) |
| [vuUTF8toANSI](vuUTF8toANSI.md) | Converts byte-preserving UTF-8 input to decoded text. |
| [vuValidateMailAddr](vuValidateMailAddr.md) | Validates a practical internet email address, rejects malformed values, and can flag suspicious typo-like domains. |
| [vuViewMail](vuViewMail.md) | Opens a mail file using the default shell-associated application. |

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
