
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRun(Filename, WStyle, Wait)

```Prototype
vuRun(*CSTRING,LONG,LONG), Signed
```

## Description

Build 210 improves reliability with longer command lines and supports launching executable programs and `.bat` or `.cmd` scripts.

The Filename parameter is one command line string containing the executable (or script) and optional arguments. Quote an executable or script path containing spaces. Use the `vuShell` family for opening documents or URLs via Windows file associations.

## Parameters

| Parameter | Data Type    | Description |
|-----------|--------------|-------------|
| Filename  | `*CSTRING` | Fully qualified path and filename of the program to run. May also include runtime parameters in the same string. |
| WStyle    | LONG         | Window style for execution:<br>0 = Hidden<br>1 = Normal with focus<br>2 = Minimized with focus<br>3 = Maximized with focus<br>4 = Normal without focus<br>6 = Minimized without focus |
| Wait      | LONG         | Execution wait flag:<br>0 = Return immediately and do not wait for completion<br>1 = Wait until the program completes |

**CSTRING size note:** `CSTRING(1024)` is an example caller declaration, not a 256-character limit. The Build 210 implementation has a 32,768-byte local command buffer including the null terminator and rejects oversized input rather than truncating it. Windows command-line, executable-path, ANSI/codepage and `cmd.exe` (batch script) limits still apply. See [CSTRING Sizes and Buffer Capacity](../cstring-sizes.md).

## Returns

A `SIGNED` value:

- 1 (True) if Windows successfully launched the process (and, when requested, the wait operation succeeded)
- 0 (False) for invalid input, an oversized command, or a process-launch/wait error

**Important:** A return of 1 does **not** indicate that the launched program completed successfully. It does not report that program's exit code.

## Example

```Clarion
Filename CSTRING(1024)
WStyle   LONG
Wait     LONG

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

- Filename is treated as one command line string, so parameters must be appended correctly.
- If the executable path contains spaces, quote the executable path inside the command line string.

```Clarion
Filename = '"C:\Program Files\MyApp\MyTool.exe" /x /y'
```

- WStyle = 0 requests hidden execution, including avoiding temporary console windows. Graphical applications can still create their own windows.
- Wait = 1 tells vuRun to wait for the launched program to finish before returning.
- If an explicit executable path omits `.exe`, Build 210 retries with the `.exe` suffix if the original launch fails.
- Use `cmd.exe /C` explicitly if you need shell redirection (`>`) or built-in commands such as `echo`.
- Build 210 supports longer command lines. Provide a CSTRING large enough for the complete command and observe the documented command-length and Windows limits.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)