---
title: "vuMailTo"
summary: "Opens the default mail client using a mailto: URI built from message fields."
description: "Opens the default mail client using a mailto: URI built from message fields. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "vuMail", "vumailto"]
function_name: "vuMailTo"
category: "Legacy Compatibility"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailTo(xTo, xCc, xBcc, xSubject, xBody)

## Purpose
Builds a `mailto:` URI and asks Windows Shell to open it with the default mail client.

## Parameters
- `xTo` (*CSTRING): To recipients string.
- `xCc` (*CSTRING): Cc recipients string.
- `xBcc` (*CSTRING): Bcc recipients string.
- `xSubject` (*CSTRING): Subject text.
- `xBody` (*CSTRING): Body text.

## Return value / error codes
- Returns the Win32 `ShellExecute` result value.
- Values greater than `32` typically indicate the shell accepted the open request.
- `0`: Exception path; details are written to `vuMailLastError()`.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailTo(*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody),LONG,PROC,PASCAL,RAW,NAME('vuMailTo')
  END
END

toAddr  CSTRING(256)
ccAddr  CSTRING(256)
bccAddr CSTRING(256)
subj    CSTRING(256)
body    CSTRING(512)
rc      LONG

toAddr  = 'user@example.com'
ccAddr  = ''
bccAddr = ''
subj    = 'Test message'
body    = 'Hello from Clarion.'
rc = vuMailTo(toAddr, ccAddr, bccAddr, subj, body)
IF rc <= 32
  MESSAGE('vuMailTo failed/was rejected by shell. rc=' & rc & ' err=' & vuMailLastError())
END
```

## Notes
- This API opens the client compose UI; it does not send mail directly.
- Input fields are not URL-encoded by this function.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailTo`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
