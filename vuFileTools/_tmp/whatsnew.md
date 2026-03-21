
[Home](../index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# What's New in vuFileTools

Version: 5.0  (Build 207)

Release date: 2026-03-20

This page highlights new items in the Version 5 cycle and links to their reference topics.

## What's New in Build 207

Build 207 adds two new run-related functions and improves the documentation for the run, shell, and print families with linked comparison tables that now also appear on the related function pages.

### New Functions in Build 207

| Function | Description |
|----------|-------------|
| [vuRunExWait](functions/vuRunExWait.md) | Runs the specified file with optional parameters and working folder support, and can optionally wait until the launched process completes. |
| [vuRunExDelayWait](functions/vuRunExDelayWait.md) | Runs the specified file with optional parameters and working folder support after a specified delay, and can optionally wait until the launched process completes. |

### Run Function Comparison

| Function | Separate File/Params | Working Folder | Delay | Wait | Best Use |
|----------|----------------------|----------------|-------|------|----------|
| [vuRun](functions/vuRun.md) | No | No | No | Yes | Simple or legacy command-line launch |
| [vuRunEx](functions/vuRunEx.md) | Yes | Yes | No | No | Preferred modern launch with separate parameters |
| [vuRunExWait](functions/vuRunExWait.md) | Yes | Yes | No | Yes | Modern launch with separate parameters and wait |
| [vuRunExDelay](functions/vuRunExDelay.md) | Yes | Yes | Yes | No | Modern delayed launch |
| [vuRunExDelayWait](functions/vuRunExDelayWait.md) | Yes | Yes | Yes | Yes | Modern delayed launch with wait |
| [vuRunExists](functions/vuRunExists.md) | No | No | No | No | Launch only if the target file already exists |
| [vuRunExistsEx](functions/vuRunExistsEx.md) | No | No | Poll for file | No | Wait for a file to appear, then launch it |

### Shell Function Comparison

| Function | Separate File/Params | Working Folder | Delay | Wait | Best Use |
|----------|----------------------|----------------|-------|------|----------|
| [vuShell](functions/vuShell.md) | No | No | No | No | Simple ShellExecute launch |
| [vuShellEx](functions/vuShellEx.md) | Yes | Yes | No | No | Preferred shell launch with separate parameters |
| [vuShellDelay](functions/vuShellDelay.md) | No | No | Yes | No | Simple delayed shell launch |
| [vuShellExDelay](functions/vuShellExDelay.md) | Yes | Yes | Yes | No | Delayed shell launch with separate parameters |

### Print Function Comparison

| Function | Wait for File | Named Printer | Show Control | Best Use |
|----------|---------------|---------------|--------------|----------|
| [vuPrintExists](functions/vuPrintExists.md) | No | No | No | Print a file if it already exists |
| [vuPrintExistsEx](functions/vuPrintExistsEx.md) | Yes | No | No | Wait for a file to appear, then print it |
| [vuPrintToExists](functions/vuPrintToExists.md) | No | Yes | No | Print to a specific printer if the file exists |
| [vuPrintToExistsEx](functions/vuPrintToExistsEx.md) | Yes | Yes | No | Wait for a file to appear, then print to a specific printer |
| [vuPrintExistsShow](functions/vuPrintExistsShow.md) | No | No | Yes | Print an existing file with an explicit show mode |

When you open any of the related function pages above, you will also see the same comparison table there so it is easier to find related functions and choose the one that best matches your scenario.

---

## What's New in Build 206

Build 206 added the new password visibility helper feature for Clarion applications.

| Function | Description |
|----------|-------------|
| [vuPasswordInit](functions/vuPasswordInit.md) | Retrofits a standard Clarion password entry control with a more modern UI using a single function call. Automatically creates the show/hide eye button, uses icons compiled into the DLL, supports cue text, preserves the native Clarion control, and allows normal paste behavior so the field works more like modern password entry controls users expect. |
| [vuPasswordToggle](functions/vuPasswordToggle.md) | Toggles a managed password control between visible-text mode and normal masked mode. Ideal for wiring a Show Password button or eye icon. |

---

## Earlier Version 5 Additions (Build 205)

| Function | Description |
|----------|-------------|
| [vuCloseApp](functions/vuCloseApp.md) | Requests an application shutdown from code with three modes: cooperative close (Mode 0), cooperative plus safety-net forced terminate (Mode 1), and immediate hard kill (Mode 2). Useful for closing apps reliably even when HALT/STOP hooks or save prompts interfere. |
| [vuCloseAppEx](functions/vuCloseAppEx.md) | Extended shutdown helper that adds a configurable safety-net delay (Mode 1) and an optional user warning countdown before initiating the close request. Ideal for shared EXE update scenarios where you want to warn users, attempt a clean exit, and still guarantee shutdown. |
| [vuInternetPresent](functions/vuInternetPresent.md) | Reports whether Windows currently believes that Internet connectivity is available. Uses WinINet heuristics rather than testing a specific host. |
| [vuInternetCanReachUrl](functions/vuInternetCanReachUrl.md) | Tests whether a specific URL can be reached within a caller specified timeout. Useful for verifying connectivity to a particular service endpoint. |
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
| [vuGetStartupFolder](functions/vuGetStartupFolder.md) | Returns the path to the current user's Startup folder. |
| [vuRunExists](functions/vuRunExists.md) | Launches a file or application only if it already exists. |
| [vuRunExistsEx](functions/vuRunExistsEx.md) | Waits for a file to appear, then launches it. |
| [vuPrintExists](functions/vuPrintExists.md) | Prints a file if it already exists. |
| [vuPrintExistsEx](functions/vuPrintExistsEx.md) | Waits for a file to appear, then prints it. |
| [vuRunDelay](functions/vuRunDelay.md) | Runs a file or application after a specified delay. |
| [vuRunEx](functions/vuRunEx.md) | Runs a file or application with separate parameter and working folder support. |
| [vuRunExDelay](functions/vuRunExDelay.md) | Delays the launch, then runs a file or application with separate parameter and working folder support. |
| [vuShellEx](functions/vuShellEx.md) | Shell launches a file or application with separate parameter and working folder support. |
| [vuShellDelay](functions/vuShellDelay.md) | Delays a simple shell launch. |
| [vuShellExDelay](functions/vuShellExDelay.md) | Delays a shell launch with separate parameter and working folder support. |
| [vuPrintToExists](functions/vuPrintToExists.md) | Prints an existing file to a specified printer. |
| [vuPrintToExistsEx](functions/vuPrintToExistsEx.md) | Waits for a file to appear, then prints it to a specified printer. |
| [vuPrintExistsShow](functions/vuPrintExistsShow.md) | Prints an existing file using an explicit show mode. |
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
| [vuGetEnumeratedEntryA](functions/vuGetEnumeratedEntryA.md) | Retrieves information about the current entry during enumeration (ANSI version). |
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