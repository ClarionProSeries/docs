[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuShell(FileName)

```Prototype
vuShell(*CSTRING), Long
```


## Description
Runs a file with its associated executable. For example, opening a Word document will launch Microsoft Word.

### Parameters

| Parameter | Data Type    | Description                                      |
|-----------|--------------|--------------------------------------------------|
| FileName  | CSTRING(256) | Fully qualified path and name of the file to run. |

### Returns
A LONG value containing the instance handle of the application that was run.

### Example

```Clarion
FileName = 'MyDocument.doc'
AppHandle = vuShell(FileName)

IF AppHandle
  MESSAGE('Application launched successfully.')
ELSE
  MESSAGE('Failed to launch application.')
END
```

### Notes
- Relies on the file association defined in Windows.  
- The return value can be used as a handle reference for the launched process.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
