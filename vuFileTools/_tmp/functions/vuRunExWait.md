
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRunExWait(pFile, pParams, pWork, ShowCmd, Wait)

```Prototype
vuRunExWait(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd, LONG Wait), LONG
```

## Description
Runs the specified file with optional command-line parameters and working directory, and can optionally wait for the launched process to complete.

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
| ShowCmd | LONG | Window display option (see ShowWindow constants). |
| Wait | LONG | 0 = return immediately, 1 = wait until the launched process completes. |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1 if the file launched successfully
- 0 if the input was invalid
- Negative values may indicate a Windows launch error

### Example

```Clarion
FilePath   CSTRING(260)
Params     CSTRING(260)
WorkFolder CSTRING(260)
ShowCmd    LONG
WaitFlag   LONG
Ret        LONG

FilePath   = 'C:\Windows\Notepad.exe'
Params     = 'MyDoc.txt'
WorkFolder = ''
ShowCmd    = 1
WaitFlag   = 1

Ret = vuRunExWait(FilePath, Params, WorkFolder, ShowCmd, WaitFlag)

MESSAGE('vuRunExWait returned: ' & FORMAT(Ret), 'vuRunExWait Test')
```

### Notes
- `vuRunExWait` is the modern counterpart to `vuRun` when you want separate file and parameter values plus optional wait behavior.
- Use `Wait = 1` when your program must not continue until the launched process finishes.
- Use `vuRunExDelayWait` when you also need a startup delay before the launch begins.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)