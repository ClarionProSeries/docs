---
title: "vuViewMail"
summary: "Opens an existing mail file using the Windows shell-associated application."
description: "Opens an existing mail file using the Windows shell-associated application. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vuviewmail"]
function_name: "vuViewMail"
category: "Legacy Compatibility"
version_added: "Legacy"
last_updated: "2026-02-27"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuViewMail(xFilePath)

## Purpose
Opens the specified mail file (for example `.eml`) using the default Windows shell association.

## Parameters
- `xFilePath` (*CSTRING): Full path to an existing mail file.

## Return value / error codes
- `1`: File open request started.
- `0`: Failed. Typical cases include blank path or file not found. Error details are available in `vuMailLastError()`.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuViewMail(*CSTRING xFilePath),LONG,PASCAL,RAW,NAME('vuViewMail')
  END
END

mailFile CSTRING(260)
rc       LONG

mailFile = 'C:\Temp\sample.eml'
rc = vuViewMail(mailFile)
IF rc = 0
  MESSAGE('vuViewMail failed: ' & vuMailLastError())
END
```

## Notes
- The file must exist before calling this function.
- This function starts an external viewer and returns immediately.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuViewMail`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
