[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuShellExDelay(pFile, pParams, pWork, ShowCmd, DelayMS)

```Prototype
vuShellExDelay(*CSTRING pFile, *CSTRING pParams, *CSTRING pWork, LONG ShowCmd, LONG DelayMS), LONG
```


## Description
Runs an external program using the Windows Shell with optional parameters and working directory, after a specified delay.  
This is similar to `vuShellEx`, but execution is delayed by the given number of milliseconds.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Path to the file or executable to run.                                      |
| pParams   | CSTRING(260) | Command-line parameters to pass (can be empty).                             |
| pWork     | CSTRING(260) | Working directory for the process (can be empty to use current directory).  |
| ShowCmd   | LONG         | Window show mode (see Windows `SW_*` constants, e.g., 1 = normal).          |
| DelayMS   | LONG         | Delay in milliseconds before running the process.                          |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- Process handle (greater than 0) if the program started successfully.  
- 0 if the process could not be started.  
- Negative values may indicate errors such as invalid arguments or access denied.

### Example

```Clarion
FilePath    CSTRING(260)
Params      CSTRING(260)
WorkFolder  CSTRING(260)
ShowCmd     LONG
DelayMS     LONG
Ret         LONG

  CODE
  FilePath   = 'C:\Windows\notepad.exe'
  Params     = ''
  WorkFolder = ''
  ShowCmd    = 1        ! SW_SHOWNORMAL
  DelayMS    = 2000     ! 2 seconds

  Ret = vuShellExDelay(FilePath, Params, WorkFolder, ShowCmd, DelayMS)

  MESSAGE('vuShellExDelay returned: ' & FORMAT(Ret), 'vuShellExDelay')

```
Notes

The Shell execution method allows launching documents with their associated applications (e.g., opening .txt with Notepad).

Use when you need Shell integration (file associations) plus a timed delay before execution.

ShowCmd values follow the Windows API ShowWindow constants (e.g., 0 = hidden, 1 = normal, 3 = maximized).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
