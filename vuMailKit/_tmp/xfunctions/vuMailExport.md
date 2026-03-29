
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailExport(xFilePath)

## Purpose
Writes the message currently held in the legacy in-process message buffer to an RFC822 `.eml` file.

This is mainly useful when you have already loaded a message through one of the legacy import or POP3 load functions and want to persist that message to disk for later inspection, forwarding, or troubleshooting.

## Parameters
- `xFilePath` (*CSTRING): Full destination path for the `.eml` file to create.

## Return value / error codes
- `0`: Export succeeded.
- `-1`: `xFilePath` is blank or no message is currently loaded in the legacy message buffer.
- `-2`: File creation, write, or general export failure.

## Typical flow
A common legacy workflow is:

- load or import a message into the current in-process message buffer
- inspect headers or body text if needed
- call `vuMailExport()` to write the message to an `.eml` file

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuMailExport(*CSTRING xFilePath),LONG,PASCAL,RAW,NAME('vuMailExport')
  END
END

rc LONG
path CSTRING(260)

path = 'C:\Temp\exported.eml'
rc = vuMailExport(path)
IF rc <> 0
  MESSAGE('Export failed code ' & rc & ': ' & vuMailLastError())
END
```

## Notes
- Creates the destination directory when needed.
- This function does not connect to a mail server and does not send anything.
- It depends entirely on a message already being present in the legacy message/session state.
- If you have not first loaded or imported a message, there is nothing for this function to export.
- AuthMode and OAuth are not involved.
- Legacy reference: `vuMailDump.pdf`, section heading `vuMailExport`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)