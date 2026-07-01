---
title: "vuMailLastReturnCode"
summary: "Returns the numeric status code for the most recent send or gated vuMailKit operation."
description: "Returns the numeric status code for the most recent send or gated vuMailKit operation."
keywords: ["vuMailKit", "vuMail", "vumaillastreturncode", "oauth", "reauthorize"]
function_name: "vuMailLastReturnCode"
category: "Debug and Diagnostics"
version_added: "2026-03-04"
last_updated: "2026-06-25"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

## Purpose

vuMailLastReturnCode() returns a numeric code that describes what happened in the most recent completed send or gated vuMailKit operation.

This is intended to be machine-readable, so calling code can react without parsing vuMailLastError() text.

## When to call it

Call this after a send has completed or after a gated vuMailKit function returns a negative licensing/setup code, for example:

- After vuSendMailWait() returns.
- After your vuSendMail() call has queued a send and your polling loop sees vuMailStatus() return 0.
- After vuSendMailFromFile() has finished processing the file (if you are waiting for completion).
- After vuSendMail(), vuSaveProfile(), vuSaveProfileEx(), or vuLoadProfileEx() returns -451, -9001, -9002, or -9003.

## Return values

These codes supplement the legacy return codes from vuSendMail*().

| Value | Meaning |
|---|---|
| 0 | No additional detail available, or success. |
| -451 | Conflicting .NET mail/runtime files were detected in the application folder. Clean up the app folder before troubleshooting license or mail-provider settings. |
| -9001 | vuMailKit licensing was not initialized. |
| -9002 | License string is invalid or initialization failed. |
| -9003 | Current license tier does not allow the requested feature. |
| -701 | OAuth needs re-authorization. The refresh token is invalid, expired, or revoked. |
| -702 | OAuth temporary failure. Retry later, such as a temporary network, provider, or throttling problem. |
| -711 | Provider or mail server could not be reached. |
| -712 | SMTP authentication or provider sign-in was rejected. |
| -713 | Provider rejected the message. |

Notes:

- If vuMailLastReturnCode() is -451, call vuMailLastError() and treat the result as an application-folder deployment conflict, not a provider authentication failure.
- If vuMailLastReturnCode() is -9001, -9002, or -9003, call vuMailLastError() and treat the result as a vuMailKit licensing/setup or license-edition problem, not a provider authentication failure.
- If vuMailLastReturnCode() is -701, your UI should prompt the user to run the setup wizard or OAuth authorization flow again for the affected account.
- If vuMailLastReturnCode() is -702, treat it as temporary and retry later.
- If vuMailLastReturnCode() is -711, check connectivity and provider/server settings.
- If vuMailLastReturnCode() is -712, treat it as a sign-in/authentication rejection rather than a general connection failure.
- If vuMailLastReturnCode() is -713, the provider accepted the connection path but rejected the message.

## Clarion prototype

**Prototype:** vuMailLastReturnCode(), LONG, PROC, PASCAL, RAW, NAME('vuMailLastReturnCode')

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
  ELSIF (LastRC = -711)
    MESSAGE('The mail server could not be reached.|' & LastMsg,'vuMailKit',ICON:Exclamation)
  ELSIF (LastRC = -712)
    MESSAGE('The server rejected the sign-in.|' & LastMsg,'vuMailKit',ICON:Exclamation)
  ELSIF (LastRC = -713)
    MESSAGE('The server rejected the message.|' & LastMsg,'vuMailKit',ICON:Exclamation)
  END
```

## Related functions

- vuMailLastError()
- vuMailStatus()
- vuSendMail()
- vuSendMailWait()
- vuSendMailFromFile()
- [Recommended send flow with a stored profile](../getting-started/recommended-send-flow.md)

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
