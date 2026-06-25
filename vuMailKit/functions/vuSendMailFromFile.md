---
title: "vuSendMailFromFile"
summary: "Queues outbound emails from a CSV file."
description: "Queues outbound emails from a CSV file."
keywords: ["vuMailKit", "vuMail", "vusendmailfromfile", "smtp", "csv"]
function_name: "vuSendMailFromFile"
category: "SMTP"
version_added: "Legacy"
last_updated: "2026-06-24"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSendMailFromFile()

## Clarion prototype

**Prototype:** vuSendMailFromFile(*CSTRING InCsvFileName, *CSTRING InDefaultAttachment), SIGNED, PROC, PASCAL, RAW, NAME('vuSendMailFromFile')

## Purpose
Reads a CSV file of messages, validates rows, and queues valid rows for SMTP delivery.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InCsvFileName | *CSTRING | CSV file path to read. |
| InDefaultAttachment | *CSTRING | Default attachment path/list applied when a CSV row has an empty ATTACH field. |

## Return value / error codes
| Value | Meaning |
|---|---|
| 1 | At least one valid row was queued. |
| 0 | File missing/invalid, no valid rows, or processing failure. |
| -451 | vuMailKit detected conflicting .NET mail/runtime files in the application folder before the send operation. |
| -9001 | vuMailKit licensing was not initialized. |
| -9002 | license string is invalid or initialization failed. |
| -9003 | current license tier does not allow this feature. |

## Example (Clarion)
```clarion
rc          LONG
csvFile     CSTRING(260)
defaultAtt  CSTRING(260)

csvFile = 'C:\Mail\outbox.csv'
defaultAtt = ''

rc = vuSendMailFromFile(csvFile, defaultAtt)
MESSAGE('vuSendMailFromFile rc=' & rc)
```

## Notes
- Register the vuMailKit template/global extension or call `vuMailKitInitialize(LicenseString)` at EXE startup before using this function. If this licensing startup step is missed, the function returns -9001 and `vuMailLastError()` explains that the problem is vuMailKit licensing/setup, not mail-server authentication.
- If this function returns -451, clean up the application folder. That code means unrelated .NET mail/OAuth/runtime files may interfere with vuMailKit's embedded dependencies; it is not a mail-server authentication error.
- CSV rows must contain these columns in this order: FROM, TO, CC, BCC, SUBJECT, BODY, ATTACH.
- Blank lines and invalid rows are skipped.
- If a row has a blank ATTACH field, InDefaultAttachment is used for that row.
- If no valid rows remain after parsing, the function returns 0.
- Sender selection for the FROM column follows the same rules used by `vuSendMail()` and `vuSendMailWait()`.
- If a save folder was set with `vuSetSaveFolder()` or `vuGlobalsSetEmailFolder()` before this call, each queued row captures that folder and can save an outgoing .eml copy before its SMTP send attempt.
- If a sent-mail CSV log was set with `vuSetMailLog()` or `vuLogSetFile()` before this call, each row's send attempt can be logged. Successful sends include the saved .eml path when an outgoing copy was saved. Failed sends are logged with the result text.
- Attachments may be blank, a single full path, a comma/semicolon-separated list, or wildcard masks such as `C:\Mail\Statements\*.pdf`.

## From column behavior

The CSV FROM column follows the same sender-selection rules as `vuSendMail()` and `vuSendMailWait()`:

- Blank From column uses the saved/default profile sender.
- Full mailbox like `Support <support@example.com>` is used as supplied for that row.
- Plain email address uses that address with no display name override.
- Plain display name only, such as `Technical Support`, combines that name with the saved/default profile sender address.

If a row supplies a display name only and there is no saved/default profile sender address available, that row is treated as invalid and is skipped.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
