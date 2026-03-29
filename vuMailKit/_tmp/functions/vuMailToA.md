
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailToA(xTo, xCc, xBcc, xSubject, xBody, xAttachment)

## Purpose
Builds a `mailto:` URI (including an `attach=` parameter) and asks Windows Shell to open it with the default mail client.

## Parameters
- `xTo` (*CSTRING): To recipients string.
- `xCc` (*CSTRING): Cc recipients string.
- `xBcc` (*CSTRING): Bcc recipients string.
- `xSubject` (*CSTRING): Subject text.
- `xBody` (*CSTRING): Body text.
- `xAttachment` (*CSTRING): Attachment path hint for clients that interpret `attach=` in `mailto:` URIs.

## Return value / error codes
- Returns the Win32 `ShellExecute` result value.
- Values greater than `32` typically indicate the shell accepted the open request.
- `0`: Exception path; details are written to `vuMailLastError()`.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailToA(*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttachment),LONG,PROC,PASCAL,RAW,NAME('vuMailToA')
  END
END

toAddr  CSTRING(256)
ccAddr  CSTRING(256)
bccAddr CSTRING(256)
subj    CSTRING(256)
body    CSTRING(512)
attach  CSTRING(260)
rc      LONG

toAddr  = 'user@example.com'
ccAddr  = ''
bccAddr = ''
subj    = 'Test with attachment hint'
body    = 'Please see attached file.'
attach  = 'C:\Temp\report.pdf'
rc = vuMailToA(toAddr, ccAddr, bccAddr, subj, body, attach)
IF rc <= 32
  MESSAGE('vuMailToA failed/was rejected by shell. rc=' & rc & ' err=' & vuMailLastError())
END
```

## Notes
- Many mail clients ignore non-standard `attach=` URI parameters.
- Input fields are not URL-encoded by this function.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailToA`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)