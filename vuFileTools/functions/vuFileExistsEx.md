[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuFileExistsEx(pFile, WaitSeconds, PollMS)

```Prototype
vuFileExistsEx(*CSTRING,LONG,LONG), LONG
```


## Description
Checks whether a specified file exists, with optional waiting and polling.  
This allows you to pause execution while waiting for a file to appear.

### Parameters

| Parameter   | Data Type    | Description                                                                 |
|-------------|--------------|-----------------------------------------------------------------------------|
| pFile       | CSTRING(260) | Full path of the file to check (for example, `C:\Windows\Notepad.exe`).     |
| WaitSeconds | LONG         | Maximum number of seconds to wait for the file to appear.                   |
| PollMS      | LONG         | Polling interval in milliseconds while waiting.                            |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
- 1 if the file exists (detected within the wait time).  
- 0 if the file does not exist within the wait period.  
- Negative values may indicate errors such as invalid arguments.

### Example

```Clarion
TestPath    CSTRING(260)
Result      LONG

  CODE
  TestPath = 'C:\Windows\Notepad.exe'
  Result = vuFileExistsEx(TestPath, 5, 0)

  IF Result
    MESSAGE('The file EXISTS: ' & TestPath, 'vuFileExistsEx')
  ELSE
    MESSAGE('The file does NOT exist: ' & TestPath, 'vuFileExistsEx')
  END

  TestPath = 'C:\Windows\NotNotepad.exe'
  SETCURSOR(CURSOR:Wait)
  Result = vuFileExistsEx(TestPath, 5, 0)
  SETCURSOR()  ! Reset cursor

  IF Result
    MESSAGE('The file EXISTS: ' & TestPath, 'vuFileExistsEx')
  ELSE
    MESSAGE('The file does NOT exist: ' & TestPath, 'vuFileExistsEx')
  END

```
Notes

Useful for scenarios where a file is expected to be created shortly (e.g., output from another process).

PollMS controls how often the check is repeated during the wait period.

Use vuFileExists for a quick, immediate existence check without waiting.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
