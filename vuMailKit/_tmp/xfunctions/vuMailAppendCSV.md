
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailAppendCSV(xFrom, xTo, xCc, xBcc, xSubject, xBody, xAttachment)

## Purpose
Appends one CSV row with message fields to the file previously selected by `vuMailCreateCSV()` (or `vuMailSelectCSV()`).

## Parameters
- `xFrom` (*CSTRING): From address/text.
- `xTo` (*CSTRING): To address/text.
- `xCc` (*CSTRING): CC address/text.
- `xBcc` (*CSTRING): BCC address/text.
- `xSubject` (*CSTRING): Subject text.
- `xBody` (*CSTRING): Body text.
- `xAttachment` (*CSTRING): Attachment path/text.

## Return value / error codes
- `1`: Row appended.
- `0`: Failure (for example no selected CSV file, selected file missing, or write failure). Error text is available through `vuMailLastError()`.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailAppendCSV(*CSTRING xFrom,*CSTRING xTo,*CSTRING xCc,*CSTRING xBcc,*CSTRING xSubject,*CSTRING xBody,*CSTRING xAttachment),LONG,PASCAL,RAW,NAME('vuMailAppendCSV')
  END
END

fromAddr  CSTRING(128)
toAddr    CSTRING(128)
ccAddr    CSTRING(1)
bccAddr   CSTRING(1)
subject   LONG
body      CSTRING(256)
attach    CSTRING(260)

fromAddr = 'sender@example.com'
toAddr = 'to@example.com'
ccAddr = ''
bccAddr = ''
subject = 'Test subject'
body = 'Test body'
attach = 'C:\Temp\a.pdf'

IF vuMailAppendCSV(fromAddr,toAddr,ccAddr,bccAddr,subject,body,attach) = 0
  MESSAGE('Append failed: ' & vuMailLastError())
END
```

## Notes
- Uses ASCII encoding and CSV quoting/escaping for commas, quotes, and line breaks.
- Requires a selected CSV path from `vuMailCreateCSV()`/`vuMailSelectCSV()`.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailAppendCSV`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)