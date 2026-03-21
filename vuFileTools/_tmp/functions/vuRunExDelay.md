
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunExDelay(pFile, pParams, pWork, ShowCmd, DelayMS)

```Prototype
vuRunExDelay(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd, LONG DelayMS), LONG
```

## Description
Runs an external program with optional parameters and working directory after a specified delay.

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
| pFile | CSTRING(260) | Path to the executable file to run. |
| pParams | CSTRING(260) | Optional command-line parameters to pass to the executable. |
| pWork | CSTRING(260) | Optional working directory for the process. |
| ShowCmd | LONG | Window show mode (see Windows `SW_*` constants). |
| DelayMS | LONG | Delay in milliseconds before the program is launched. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1 if the program launched successfully
- 0 if the launch failed
- Negative values may indicate a Windows shell error

### Example

```Clarion
FilePath    CSTRING(260)
Params      CSTRING(260)
WorkFolder  CSTRING(260)
ShowCmd     LONG
DelayMS     LONG
Ret         LONG

FilePath   = 'C:\Windows\Notepad.exe'
Params     = 'MyDoc.txt'
WorkFolder = ''
ShowCmd    = 1
DelayMS    = 2000

Ret = vuRunExDelay(FilePath, Params, WorkFolder, ShowCmd, DelayMS)

MESSAGE('vuRunExDelay returned: ' & FORMAT(Ret), 'vuRunExDelay')
```

### Notes
- Use this when you need to delay a launch but still want file, parameters, and working folder passed separately.
- The delay is applied once before the launch begins.
- Use `vuRunExDelayWait` when you also need to wait for the launched process to complete.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)