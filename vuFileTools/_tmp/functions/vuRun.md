
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRun(Filename, WStyle, Wait)

```Prototype
vuRun(*CSTRING,LONG,LONG), Signed
```

## Description

Runs a program using the Windows Shell with the specified window style and wait behavior.

The `Filename` parameter is passed as a single command line string. This means it can contain the fully qualified path to the program followed by any runtime parameters.

## Parameters

| Parameter | Data Type    | Description |
|-----------|--------------|-------------|
| Filename  | CSTRING(256) | Fully qualified path and filename of the program to run. May also include runtime parameters in the same string. |
| WStyle    | LONG         | Window style for execution:<br>0 = Hidden<br>1 = Normal with focus<br>2 = Minimized with focus<br>3 = Maximized with focus<br>4 = Normal without focus<br>6 = Minimized without focus |
| Wait      | LONG         | Execution wait flag:<br>0 = Return immediately and do not wait for completion<br>1 = Wait until the program completes |

## Returns

A LONG value:

- 1 (True) on success
- 0 (False) on failure

## Example

```Clarion
Filename = 'C:\Windows\Notepad.exe mydoc.txt'
WStyle   = 1   ! Normal with focus
Wait     = 1   ! Wait for program to complete

IF vuRun(Filename, WStyle, Wait)
  MESSAGE('Program executed successfully.')
ELSE
  MESSAGE('Failed to run program.')
END
```

## Notes

- `Filename` is treated as one command line string, so parameters must be appended correctly.
- If the executable path contains spaces, quote the executable path inside the command line string.

```Clarion
Filename = '"C:\Program Files\MyApp\MyTool.exe" /x /y'
```

- `WStyle = 0` requests hidden execution.
- `Wait = 1` tells `vuRun` to wait for the launched program to finish before returning.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)