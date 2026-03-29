
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailCreateCSV(xCsvFilePath)

## Purpose
Creates (or truncates) the target CSV file and stores it as the selected CSV used by `vuMailAppendCSV()`.

## Parameters
- `xCsvFilePath` (*CSTRING): Full path to the CSV file.

## Return value / error codes
- `1`: CSV created and selected.
- `0`: Failure (for example blank path or file create failure). Error text is available through `vuMailLastError()`.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailCreateCSV(*CSTRING xCsvFilePath),LONG,PASCAL,RAW,NAME('vuMailCreateCSV')
  END
END

csvPath CSTRING(260)
csvPath = 'C:\Temp\mailout.csv'
IF vuMailCreateCSV(csvPath) = 0
  MESSAGE('Create CSV failed: ' & vuMailLastError())
END
```

## Notes
- If needed, parent directories are created.
- A blank path returns `0`.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailCreateCSV`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)