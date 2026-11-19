---
title: "vuRenameDirectory"
summary: "Renames an existing Windows directory without copying or deleting its contents."
description: "Renames a directory on the same volume using Windows MoveFileEx. Returns 1 for success, 0 for invalid input, or a negative Windows error number for an API failure."
keywords: ["vuFileTools", "directory", "folder", "rename", "Clarion", "Windows", "MoveFileEx", "error"]
function_name: "vuRenameDirectory"
category: "Files and Folders"
version_added: "5.0 Build 210"
last_updated: "2026-10-26"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRenameDirectory(OldDirectory, NewDirectory)

```Prototype
vuRenameDirectory(*CSTRING,*CSTRING), LONG
```

## Description

Renames an **existing Windows directory** to a new full path on the **same volume**. A directory may contain files and subdirectories; its contents remain in the renamed directory. The function calls the Windows `MoveFileExA` API directly, not `vuMove()`, and does **not** copy files and delete the source.

The function does not create the destination's parent folders, overwrite an existing destination, or schedule a rename at reboot. For an ordinary folder-name change, use paths with the same parent folder but different final directory names.

## Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| OldDirectory | CSTRING | Full path of the existing directory to rename. Must refer to a directory rather than a file. |
| NewDirectory | CSTRING | Full path of the new directory name. The destination must not already exist and must be on the same volume. Its parent folder must exist. |

The CSTRING declaration sizes below are examples, **not** fixed 256-character limits. Choose capacities suitable for your application. Actual path support also depends on Windows API and filesystem path rules; declaring `CSTRING(1024)` does not, by itself, enable Windows long-path support. See [CSTRING Sizes and Buffer Capacity](../cstring-sizes.md).

## Returns

| LONG return | Meaning |
|-------------|---------|
| `1` | Directory renamed successfully. |
| `0` | Empty source or destination path, or the existing source is a file rather than a directory. No rename was attempted. |
| Negative value | Windows failure. The absolute value is the Win32 error number returned by `GetLastError()` from the source-attributes check or rename operation. |

Common Windows errors include `-2` (source not found), `-3` (path not found), `-5` (access denied), and `-183` (destination already exists). The exact negative value depends on Windows; do not assume these are the only possible errors.

## Clarion Example

```Clarion
OldDirectory CSTRING(1024)
NewDirectory CSTRING(1024)
Result       LONG

CODE
OldDirectory = 'C:\Data\CustomerFiles'
NewDirectory = 'C:\Data\ArchivedFiles'

Result = vuRenameDirectory(OldDirectory, NewDirectory)
IF Result = 1
  MESSAGE('Directory renamed successfully.')
ELSIF Result = 0
  MESSAGE('Invalid directory name or source is not a directory.')
ELSE
  MESSAGE('Windows error: ' & FORMAT(ABS(Result)))
END
```

The Clarion DLL prototype is:

```Clarion
vuRenameDirectory(*CSTRING,*CSTRING),LONG,PROC,PASCAL,RAW,NAME('vuRenameDirectory')
```

## Notes

- Windows performs a direct rename. It does not walk the directory to individually copy or rewrite its files.
- Renaming or moving a directory across volumes is not supported. No copy/delete fallback is attempted.
- Windows can reject the rename if files or the directory are open without compatible sharing, or if security permissions prevent the operation.
- Avoid trailing path separators on the directory names. Use the full original and destination paths, not just the old/new folder labels.
- This initial ANSI Windows API implementation uses `MoveFileExA`. It follows the machine's Windows ANSI code page for non-ASCII path characters; it is not a Unicode long-path API wrapper.
- Do not attempt to rename a drive root. The destination parent directory must already exist.
- `vuMove()` is a separate, copy-and-delete-oriented function and should not be used in place of `vuRenameDirectory()` for simple folder renames.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
