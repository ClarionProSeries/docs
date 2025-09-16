[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuRunDelay(pFile, DelayMS)

```Prototype
vuRunDelay(*CSTRING pFile, LONG DelayMS), LONG
```


## Description
Runs the specified file after waiting for a specified delay.

### Parameters

| Parameter | Data Type    | Description                                                                |
|-----------|--------------|----------------------------------------------------------------------------|
| pFile     | CSTRING(260) | Full path to the file to execute.                                          |
| DelayMS   | LONG         | Delay before execution, in milliseconds (e.g., 2000 = 2 seconds).          |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: File was executed successfully after the delay  
- 0: File could not be executed or does not exist  

### Example

```Clarion
FilePath CSTRING(260)
DelayMS  LONG
Ret      LONG

FilePath = 'C:\Windows\notepad.exe'
DelayMS  = 2000   ! 2 seconds

Ret = vuRunDelay(FilePath, DelayMS)

MESSAGE('vuRunDelay returned: ' & FORMAT(Ret), 'vuRunDelay Test')

```
Notes

Useful for delaying startup of another process to allow system resources or dependencies to initialize.

If the file does not exist, the function returns 0 and does not attempt to run.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
