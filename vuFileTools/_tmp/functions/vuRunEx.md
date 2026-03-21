
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunEx(pFile, pParams, pWork, ShowCmd)

```Prototype
vuRunEx(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd), LONG
```

## Description
Runs the specified file with optional command-line parameters, working directory, and window display options.

## Related Run Functions

| Function | Separate File/Params | Working Folder | Delay | Wait | Notes |
|----------|----------------------|----------------|-------|------|-------|
| [vuRun](vuRun.md) | No | No | No | Yes | Single command-line string. Good for simple or legacy launches. |
| [vuRunDelay](vuRunDelay.md) | No | No | Yes | No | Single command-line string with a startup delay. |
| [vuRunEx](vuRunEx.md) | Yes | Yes | No | No | Preferred modern launch when you want file and parameters passed separately. |
| [vuRunExWait](vuRunExWait.md) | Yes | Yes | No | Yes | Preferred modern launch with separate parameters and optional wait. |
| [vuRunExDelay](vuRunExDelay.md) | Yes | Yes | Yes | No | Modern launch with separate parameters plus startup delay. |
| [vuRunExDelayWait](vuRunExDelayWait.md) | Yes | Yes | Yes | Yes | Modern launch with separate parameters, startup delay, and optional wait. |
| [vuRunExists](vuRunExists.md) | No | No | No | No | Runs only if the target file already exists. |
| [vuRunExistsEx](vuRunExistsEx.md) | No | No | Polls for file | No | Waits for a file to appear, then runs it. |

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| pFile | CSTRING(260) | Full path to the executable file to run. |
| pParams | CSTRING(260) | Optional command-line parameters to pass to the executable. |
| pWork | CSTRING(260) | Optional working directory for the executable. |
| ShowCmd | LONG | Window display option (see ShowWindow constants, for example 1 = normal window). |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The numbers are for example only._

### Returns
A LONG value indicating the result:

- 1 if the file launched successfully
- 0 if the launch failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath   CSTRING(260)
Params     CSTRING(260)
WorkFolder CSTRING(260)
ShowCmd    LONG
Ret        LONG

FilePath   = 'C:\Windows\Notepad.exe'
Params     = 'MyDoc.txt'
WorkFolder = ''
ShowCmd    = 1   ! SW_SHOWNORMAL

Ret = vuRunEx(FilePath, Params, WorkFolder, ShowCmd)

MESSAGE('vuRunEx returned: ' & FORMAT(Ret), 'vuRunEx Test')
```

### Notes
- `vuRunEx` is generally the preferred choice when you need to launch an executable with parameters.
- `pFile` and `pParams` are passed separately, which avoids command-line formatting mistakes common with single-string launch functions.
- If `pWork` is blank, the system default working folder is used.
- Use `vuRunExWait` when you need the same explicit parameter handling plus optional wait behavior.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)