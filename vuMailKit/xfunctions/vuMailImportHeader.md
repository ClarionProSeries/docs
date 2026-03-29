---
title: "vuMailImportHeader"
summary: "Imports only message headers from an .eml file into the legacy session."
description: "Imports only message headers from an .eml file into the legacy session. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vumailimportheader"]
function_name: "vuMailImportHeader"
category: "Legacy Compatibility"
version_added: "Legacy"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailImportHeader(xName)

## Purpose
Loads only the header block from an email file and places those headers into the current legacy in-process message buffer.

Use this when you want quick access to header fields without loading and parsing the full body and attachment content.

## Parameters
- `xName` (*CSTRING): Source `.eml` file path.

## Return value / error codes
- `0`: Header import succeeded.
- `-1`: Blank filename.
- `-2`: File not found, open failure, or parse failure.
- `-3`: File exists but is empty.

## What this loads
This function is header-only.

That means it is useful for things like:

- subject
- from
- date
- message-id
- routing headers

If you need body text, attachments, or embedded content, use a full message load/import path instead.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailImportHeader(*CSTRING xName),LONG,PASCAL,RAW,NAME('vuMailImportHeader')
  END
END

rc LONG
src CSTRING(260)

src = 'C:\Temp\inbound.eml'
rc = vuMailImportHeader(src)
IF rc <> 0
  MESSAGE('Import header failed code ' & rc & ': ' & vuMailLastError())
END
```

## Notes
- This function updates the current legacy message/session state.
- It does not connect to POP3 or IMAP.
- Body content is intentionally not loaded.
- AuthMode and OAuth are not involved.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailImportHeader`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
