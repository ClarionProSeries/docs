[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPrintTextFile(FileName, Default)

```Prototype
vuPrintTextFile(*CSTRING,LONG), Signed
```


## Description
Prints the contents of a text file to either the default printer or a printer selected by the end user.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| FileName  | CSTRING      | Full path and name of the text file to print.                               |
| Default   | LONG         | Set to 1 to use the default printer, or 0 to display the printer dialog box. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
FileName = 'C:\Temp\Test.txt'

! Print to default printer
vuPrintTextFile(FileName, 1)

! Prompt user to select printer
vuPrintTextFile(FileName, 0)
```

### Notes
- When `Default` is set to 0, the user is prompted to select a printer.  
- Supports printing plain text files only.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
