[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuRunExists(pFile)

```Prototype
vuRunExists(*CSTRING pFile), LONG
```


## Description
Attempts to run the specified file if it exists. This is a quick way to launch an application or document only if the file is present.

### Parameters

| Parameter | Data Type    | Description                                 |
|-----------|--------------|---------------------------------------------|
| pFile     | CSTRING(260) | Full path to the file to execute if present |

_Note: In vuFileTools V5, CSTRINGs are not limited to the size shown above. The number is for example only._

### Returns
A LONG value indicating the result:

- 1: File exists and was executed successfully  
- 0: File does not exist or could not be executed  

### Example

```Clarion
FilePath CSTRING(260)
Ret      LONG

FilePath = 'C:\Windows\notepad.exe'
Ret      = vuRunExists(FilePath)

MESSAGE('vuRunExists returned: ' & FORMAT(Ret), 'vuRunExists Test')

```
Notes

Use when you want to execute a file only if it exists.

If the file does not exist, no action is taken and the function returns 0.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
