[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuReplaceCharsInFile(FileName, OldStrg, NewStrg)

```Prototype
vuReplaceCharsInFile(*CSTRING, *CSTRING, *CSTRING), Long
```


## Description
Searches through a text file and replaces all occurrences of `OldStrg` with `NewStrg`. The replacement substring does not need to be the same length as the original.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| FileName  | CSTRING(256) | Fully qualified path and filename of the file to modify.                    |
| OldStrg   | CSTRING(128) | The substring you wish to replace.                                          |
| NewStrg   | CSTRING(128) | The substring to replace `OldStrg` with.                                    |

### Returns
A LONG value:  
- 1 (True) if successful  
- 0 (False) on failure  

### Example

```Clarion
FileName = 'C:\Temp\myfile.txt'
OldStrg  = 'Windows XP'
NewStrg  = 'Windows Vista'

IF vuReplaceCharsInFile(FileName, OldStrg, NewStrg)
  MESSAGE('Text replaced successfully in ' & FileName)
ELSE
  MESSAGE('Failed to replace text in file.')
END
```

### Notes
- Replaces **all** occurrences of `OldStrg` within the specified file.  
- Be cautious when modifying files in place; make backups if necessary.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
