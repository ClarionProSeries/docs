
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailSelectCSV(xCsvFilePath)

## Purpose
Selects an existing CSV file so later `vuMailAppendCSV()` calls append rows to that file.

## Parameters
- `xCsvFilePath` (*CSTRING): Full path to an existing CSV file.

## Return value / error codes
- `1`: CSV file exists and is now selected.
- `0`: Failed. Common cases are blank path or file not found. Use `vuMailLastError()` for details.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailSelectCSV(*CSTRING xCsvFilePath),LONG,PASCAL,RAW,NAME('vuMailSelectCSV')
  END
END

csvPath CSTRING(260)
rc      LONG

csvPath = 'C:\Temp\mailout.csv'
rc = vuMailSelectCSV(csvPath)
IF rc = 0
  MESSAGE('Select CSV failed: ' & vuMailLastError())
END
```

## Notes
- This function does not create a file; use `vuMailCreateCSV()` when you need to create/truncate a CSV first.
- AuthMode/OAuth is not used by this function.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailSelectCSV`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)