[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuRunExistsEx(pFile, WaitSeconds, PollMS)

```Prototype
vuRunExistsEx(*CSTRING pFile, LONG WaitSeconds, LONG PollMS), LONG
```


## Description
Attempts to run the specified file if it exists. Optionally waits for the file to appear, polling at the given interval, before running it.

### Parameters

| Parameter    | Data Type    | Description                                                                 |
|--------------|--------------|-----------------------------------------------------------------------------|
| pFile        | CSTRING(260) | Full path to the file to execute if present.                                |
| WaitSeconds  | LONG         | Maximum number of seconds to wait for the file to appear.                   |
| PollMS       | LONG         | Interval, in milliseconds, to poll for the file while waiting.              |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: File exists (or appeared within the wait period) and was executed successfully  
- 0: File does not exist or did not appear within the wait period  
- Negative value: Error occurred  

### Example

```Clarion
FilePath    CSTRING(260)
WaitSeconds LONG
PollMS      LONG
Ret         LONG

FilePath    = 'C:\Temp\LaterFile.txt'
WaitSeconds = 10
PollMS      = 200

Ret = vuRunExistsEx(FilePath, WaitSeconds, PollMS)

MESSAGE('vuRunExistsEx returned: ' & FORMAT(Ret), 'vuRunExistsEx Test')

```
Notes

Useful for scenarios where a file will be generated shortly and then executed.

Polling continues until the file appears or the wait time expires.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
