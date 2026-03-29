---
title: "vuMailLastReturnCode"
summary: "Returns the numeric status code for the most recent completed send operation."
description: "Returns the numeric status code for the most recent completed send operation. [All functions](index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vumaillastreturncode", "oauth", "reauthorize"]
function_name: "vuMailLastReturnCode"
category: "Debug and Diagnostics"
version_added: "2026-03-04"
last_updated: "2026-03-04"
---

[All functions](index.md) | [About function names](AboutFunctionNames.md)

## Purpose

`vuMailLastReturnCode()` returns a numeric code that describes what happened in the most recent completed send operation.

This is intended to be machine-readable, so calling code can react without parsing `vuMailLastError()` text.

## When to call it

Call this after a send has completed, for example:

- After `vuSendMailWait()` returns.
- After your `vuSendMail()` call has queued a send and your polling loop sees `vuMailStatus()` return 0.
- After `vuSendMailFromFile()` has finished processing the file (if you are waiting for completion).

## Return values

These codes supplement the legacy return codes from `vuSendMail*()`.

- `0`  No additional detail available, or success.
- `-701`  OAuth needs re-authorization. The refresh token is invalid, expired, or revoked.
- `-702`  OAuth temporary failure. Retry later (network, provider outage, throttling).

Notes:

- If `vuMailLastReturnCode()` is `-701`, your UI should prompt the user to run the OAuth authorization flow again for the affected account.
- If `vuMailLastReturnCode()` is `-702`, treat it as temporary and retry later.

## Clarion prototype

```clarion
  MODULE('vuMailKit.dll')
  vuMailLastReturnCode(),LONG,PROC,Pascal,Raw,Name('vuMailLastReturnCode')
  END
```

## Example (Clarion)

```clarion
  WaitRC  LONG
  LastRC  LONG
  LastMsg CSTRING(2048)

  WaitRC = vuSendMailWait(cFrom,cTo,cCC,cBCC,cSubject,cBody,cAttach)

  LastRC = vuMailLastReturnCode()
  LastMsg = vuMailLastError()

  IF (LastRC = -701)
    MESSAGE('OAuth needs re-authorization.|' & LastMsg,'vuMailKit',ICON:Exclamation)
  ELSIF (LastRC = -702)
    MESSAGE('Temporary OAuth failure.|' & LastMsg,'vuMailKit',ICON:Exclamation)
  END
```

## Related functions

- `vuMailLastError()`
- `vuMailStatus()`
- `vuSendMail()`
- `vuSendMailWait()`
- `vuSendMailFromFile()`
