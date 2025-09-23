[Home](../index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# What's New in vuFileTools

Version: 5.0  
Release date: 2025-09-15

This page highlights new items in the v5 cycle and links to their reference topics.

## New in Version 5

| Function | Description |
|----------|-------------|
| [vuIsNTFSCompressed](functions/vuIsNTFSCompressed.md) | Checks whether the specified file or folder is NTFS-compressed. Works with both individual files and directories. |
| [vuSetNTFSCompression](functions/vuSetNTFSCompression.md) | Enables or disables NTFS compression on the specified file or folder. |
| [vuPrimaryLinkSpeed](functions/vuPrimaryLinkSpeed.md) | Retrieves the speed of the primary network connection, in megabits per second (Mbps). |
| [vuIsNetworkSlow](functions/vuIsNetworkSlow.md) | Determines whether the primary network connection is slower than a specified threshold. Uses the speed reported by `vuPrimaryLinkSpeed()`. |
| [vuCreateHardLink](functions/vuCreateHardLink.md) | Creates a hard link to an existing file on NTFS volumes. |
| [vuCreateSymbolicLink_File](functions/vuCreateSymbolicLink_File.md) | Creates a symbolic link (soft link) that points to a file. Requires elevated privileges. |
| [vuCreateSymbolicLink_Dir](functions/vuCreateSymbolicLink_Dir.md) | Creates a symbolic link (soft link) that points to a directory. Requires elevated privileges. |
| [vuCreateJunction](functions/vuCreateJunction.md) | Creates an NTFS junction point, which acts as a directory reparse point to another folder. |
| [vuAddStartupShortcut](functions/vuAddStartupShortcut.md) | Creates a shortcut (.lnk file) in the Windows Startup folder so that the specified program runs automatically when Windows starts. |
| [vuRemoveStartupShortcut](functions/vuRemoveStartupShortcut.md) | Removes a shortcut (.lnk file) from the Windows Startup folder. |
| [vuEnumerateStartupItems](functions/vuEnumerateStartupItems.md) | Begins enumeration of startup items in the Windows Startup folder. |
| [vuGetStartupItem](functions/vuGetStartupItem.md) | Retrieves information about the current startup item during enumeration. |
| [vuGetStartupFolder](functions/vuGetStartupFolder.md) | Returns the path to the current user’s Startup folder. |
| [vuRunExists](functions/vuRunExists.md) | Checks if a given executable file exists on the system path or at a specified location. |
| [vuRunExistsEx](functions/vuRunExistsEx.md) | Extended version of `vuRunExists` that supports additional parameters and search modes. |
| [vuPrintExists](functions/vuPrintExists.md) | Checks if a printer with the specified name exists. |
| [vuPrintExistsEx](functions/vuPrintExistsEx.md) | Extended version of `vuPrintExists`, supporting more detailed checks. |
| [vuRunDelay](functions/vuRunDelay.md) | Runs an executable after a specified delay. |
| [vuRunEx](functions/vuRunEx.md) | Runs an executable with extended options such as window state or working directory. |
| [vuRunExDelay](functions/vuRunExDelay.md) | Combines `vuRunEx` with a delay before execution. |
| [vuShellEx](functions/vuShellEx.md) | Executes a shell command using the Windows ShellExecute API. |
| [vuShellDelay](functions/vuShellDelay.md) | Executes a shell command after a specified delay. |
| [vuShellExDelay](functions/vuShellExDelay.md) | Executes a shell command with extended options and a delay. |
| [vuPrintToExists](functions/vuPrintToExists.md) | Checks if a “Print To” device exists in Windows. |
| [vuPrintToExistsEx](functions/vuPrintToExistsEx.md) | Extended version of `vuPrintToExists` with additional checks. |
| [vuPrintExistsShow](functions/vuPrintExistsShow.md) | Displays whether a specified printer exists using a Windows message box. |
| [vuGetDriveSpace](functions/vuGetDriveSpace.md) | Retrieves total and available space for the specified drive. |
| [vuGetVolumeLabel](functions/vuGetVolumeLabel.md) | Returns the volume label for the specified drive. |
| [vuExtractFileNameEx](functions/vuExtractFileNameEx.md) | Extracts the file name from a full path, with extended options. |
| [vuExplorerFileType](functions/vuExplorerFileType.md) | Retrieves the file type description shown in Windows Explorer. |
| [vuIsElevated](functions/vuIsElevated.md) | Checks if the current process is running with elevated (administrator) privileges. |
| [vuElevationType](functions/vuElevationType.md) | Determines the type of elevation in effect (full, limited, or none). |
| [vuIsFolderCompressed](functions/vuIsFolderCompressed.md) | Checks whether the specified folder is compressed at the NTFS level. |
| [vuCreateCompressedFolder](functions/vuCreateCompressedFolder.md) | Creates a new NTFS-compressed folder. |
| [vuSetFolderCompression](functions/vuSetFolderCompression.md) | Enables or disables NTFS compression on a folder. |
| [vuFileExists](functions/vuFileExists.md) | Checks whether a specified file exists. |
| [vuFileExistsEx](functions/vuFileExistsEx.md) | Extended version of `vuFileExists`, with support for more advanced checks. |
| [vuEnumerateFolderA](functions/vuEnumerateFolderA.md) | Begins enumeration of files and folders within a specified directory (ANSI version). |
| [vuGetEnumeratedEntryA](functions/vuGetEnumeratedEntryA.md) | Retrieves information about the current entry during folder enumeration (ANSI version). |
| [vuStartDriveEnum](functions/vuStartDriveEnum.md) | Begins enumeration of system drives. |
| [vuGetNextDrive](functions/vuGetNextDrive.md) | Retrieves information about the next drive in the enumeration. |
| [vuEndDriveEnum](functions/vuEndDriveEnum.md) | Ends drive enumeration and releases associated resources. |
| [vuGetNextDriveAuto](functions/vuGetNextDriveAuto.md) | Retrieves the next drive in enumeration automatically. |
| [vuStartDriveEnumEx](functions/vuStartDriveEnumEx.md) | Begins extended drive enumeration with more detail. |
| [vuGetNextDriveEx](functions/vuGetNextDriveEx.md) | Retrieves the next drive in the extended enumeration. |
| [vuEndDriveEnumEx](functions/vuEndDriveEnumEx.md) | Ends extended drive enumeration. |
| [vuGetNextDriveExAuto](functions/vuGetNextDriveExAuto.md) | Retrieves the next drive automatically from extended enumeration. |
| [vuGetDriveList](functions/vuGetDriveList.md) | Returns a list of all system drives. |
| [vuGetDriveListEx](functions/vuGetDriveListEx.md) | Extended version of `vuGetDriveList`, with more detailed drive information. |

[Home](../index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)
