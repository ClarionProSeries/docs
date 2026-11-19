
[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# What's New in vuFileTools

Version: 5.0  (Build 212)


This page highlights new items in the Version 5 cycle and links to their reference topics.

## What's New in Build 212

**Release date: November 18, 2026.** vuFileTools now offers optional automatic dimming behind existing supported `MESSAGE()`, `STOP()` and `HALT()` calls. It works with ordinary Clarion dialogs and supported CapeSoft MessageBox windows without changing existing message calls. The automatic MESSAGE option is preselected when Window Dimming is enabled. Uncheck **Disable window dimming templates** in the global extension and compile; individual MESSAGE calls and normal window procedures need no changes. You can disable the effect for individual windows.


- **Custom Message Window** procedure extension for developer-written or other supported message windows. Add it to the actual message window procedure; it works whether automatic message dimming is on or off. See [Custom Message Windows](window-dimming/custom-message-windows.md).
- Three optional Clarion Source/External message procedures provide black, blue and red parent overlays while preserving normal `MESSAGE()` arguments and return values.
- Add the global extension and compile to automatically dim behind supported messages; optional procedure settings and direct calls give developers more control.
- [Single-EXE and Data DLL instructions](window-dimming/custom-messages.md) describe how to import the helper procedures into applications with shared code.

See the [Automatic Message Dimming guide](window-dimming/automatic-messages.md) and [Window Dimming function reference](window-dimming/functions/index.md). Existing vuFileTools customers receive this update without an additional purchase.

---

## What's New in Build 211

**Released: November 16, 2026.** Build 211 adds [Window Dimming](window-dimming/index.md) to vuFileTools. The implementation has seven `vuFT` DLL functions, automatic ABC/Legacy browse dimming (opt-in), per-browse appearance overrides, manual Dim/Restore, registered START child handling, and runtime enable/disable/status controls.

See the [Window Dimming guides](window-dimming/index.md), [Window Dimming function reference](window-dimming/functions/index.md), and [manifest troubleshooting](window-dimming/troubleshooting.md). The feature is also offered independently as the [cdWindowDim Code Drop](https://clarionproseries.com/products/cdwindowdim) in the [Code Drops family](https://clarionproseries.com/code-drops).

**Existing vuFileTools 5 customers receive the Window Dimming update at no additional charge.**

---

## What's New in Build 210

**Released: October 27, 2026.** Build 210 adds [vuRenameDirectory](functions/vuRenameDirectory.md), improves long-command execution in [vuRun](functions/vuRun.md), corrects hidden-window handling in the RunEx family, and resolves the vuFileTools/vuMailKit Secure Login prototype conflict.

### New Function in Build 210

| Function | Description |
|----------|-------------|
| [vuRenameDirectory](functions/vuRenameDirectory.md) | Renames a Windows directory, including its existing files and subdirectories, on the same volume without copying or deleting the contents. Reports success, invalid input, or a negative Windows error number. |

Use the **full old path and full new path**. The destination must not already exist, and the rename must stay on the same volume. For example, rename `C:\Data\Current` to `C:\Data\Archive` without having to move individual files. The new function uses normal, caller-sized CSTRING path parameters and does not impose a `CSTRING(256)` declaration limit; Windows path limits still apply.

The existing [vuMove](functions/vuMove.md) and [vuCreateDirectory](functions/vuCreateDirectory.md) functions are unchanged. The full declaration, usage example, and Windows error behavior are documented on the [vuRenameDirectory reference page](functions/vuRenameDirectory.md).

### Run function corrections

- **[vuRun](functions/vuRun.md):** Supports longer command lines, corrects launch failures encountered with longer commands, and improves hidden execution to avoid flashing console windows. The existing calling convention and 1/0 launch result are unchanged. Explicit `.bat` and `.cmd` scripts remain supported.
- **[vuRunEx](functions/vuRunEx.md), [vuRunExDelay](functions/vuRunExDelay.md), [vuRunExWait](functions/vuRunExWait.md), [vuRunExDelayWait](functions/vuRunExDelayWait.md):** Respect `ShowCmd = 0` as hidden execution (`SW_HIDE`) rather than forcibly showing a normal window. Applications that previously used `ShowCmd = 0` as an undocumented way of requesting normal display should pass `1` instead.
- A return of `1` reports that a process was successfully launched, **not** that the external program finished successfully. Windows and `cmd.exe` limits still apply. See [CSTRING sizes](cstring-sizes.md) and the function reference pages.

### Secure Login compatibility correction

Build 210 permanently renames the three vuFileTools password-control functions to `vuFTPasswordInit`, `vuFTPasswordToggle` and `vuFTPasswordCleanup`. This eliminates indistinguishable prototype errors when vuFileTools and vuMailKit are installed in the same Clarion application. vuMailKit is unchanged.

Older reference URLs for `vuPasswordInit`, `vuPasswordToggle` and `vuPasswordCleanup` now show migration notices linking directly to the new function pages; those older names are **not** available for calling.

**Existing Secure Login users must update their previously imported window or direct calls and rebuild before deploying the new DLL.** The updated template and TXA use the new names. A customized Secure Login window should have its embeds updated rather than being overwritten without review. See [Secure Login Window and Build 210 Migration](secure-login.md).

---

## What's New in Build 209

Build 209 introduces a safer, buffer-aware alternative to vuReplaceChars for replacing text in Clarion CSTRINGs. It also corrects the original function's reference documentation, including its in-place operation and LONG return type.

### New Function in Build 209

| Function | Description |
|----------|-------------|
| [vuReplaceCharsEx](functions/vuReplaceCharsEx.md) | Replaces all occurrences of a substring in MainStrg, but first checks whether the entire result fits within the CSTRING capacity supplied by the caller. If not, MainStrg is unchanged. |

For a destination declared as a Clarion CSTRING, pass SIZE(MainStrg) as the second parameter. vuReplaceCharsEx returns 1 for a completed call, including when no match was found, and 0 if its parameter or buffer validation fails.

The three-parameter vuReplaceChars remains available for older applications without any calling-convention change. It **does not** check destination capacity; use vuReplaceCharsEx for new code, especially when replacements may expand the string.

See [vuReplaceChars](functions/vuReplaceChars.md) and [vuReplaceCharsEx](functions/vuReplaceCharsEx.md) for usage, return values, and capacity examples.

**Documentation clarification:** Function examples now distinguish caller-side CSTRING declaration lengths from actual buffer and Windows API limitations. See [CSTRING Sizes and Buffer Capacity](cstring-sizes.md), including a 1,024-byte declaration example for `vuRun()`.

---

## What's New in Build 208

Build 208 improves the reliability of the vuFileTools mailslot functions and adds better tools for receiving messages and diagnosing problems.

A long-standing mailslot bug has been fixed that could cause messages between applications to be missed or processed incorrectly.

### New Functions in Build 208

| Function | Description |
|----------|-------------|
| [vuMailSlotCheckEx](functions/vuMailSlotCheckEx.md) | Preferred receive function for new applications. The caller supplies the destination buffer size so incoming messages can be handled more safely. |
| [vuMailSlotLastError](functions/vuMailSlotLastError.md) | Returns the Windows error number from the most recent mailslot operation that failed. |
| [vuMailSlotLastErrorText](functions/vuMailSlotLastErrorText.md) | Returns a readable description of the most recent Windows mailslot error. |

### Mailslot Improvements

- Improved reliability when sending and receiving messages between applications.
- Corrected a problem that could cause a previously received message to be processed again.
- Added safer buffer-aware message receiving with vuMailSlotCheckEx.
- Added Windows error information to make mailslot problems easier to diagnose.
- Existing applications can continue using the original mailslot functions without changing their calling conventions.
- Updated the documentation with practical examples and guidance for using mailslots between applications.

### Current Windows Guidance

Local mailslots remain useful for simple communication between applications running on the same Windows computer.

Microsoft has deprecated the older Remote Mailslot protocol, and current versions of Windows 11 disable remote mailslots by default. vuFileTools retains remote support for compatibility with older applications, but local mailslots are the recommended use for new vuFileTools development.

See [Mailslots Overview](mailslots.md) for examples, usage guidance, and links to the related functions.

---

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

Build 206 originally added the password visibility helper feature for Clarion applications. The three vuFileTools exported functions were renamed in Build 210 for compatibility with vuMailKit.

| Function | Description |
|----------|-------------|
| [vuFTPasswordInit](functions/vuFTPasswordInit.md) | Retrofits a standard Clarion password entry control with a more modern UI using a single function call. Automatically creates the show/hide eye button, uses icons compiled into the DLL, supports cue text, preserves the native Clarion control, and allows normal paste behavior so the field works more like modern password entry controls users expect. |
| [vuFTPasswordToggle](functions/vuFTPasswordToggle.md) | Toggles a managed password control between visible-text mode and normal masked mode. Ideal for wiring a Show Password button or eye icon. |

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
| [vuIsNetworkSlow](functions/vuIsNetworkSlow.md) | Determines whether the primary network connection is slower than a specified threshold. Uses the speed reported by vuPrimaryLinkSpeed(). |
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
| [vuFileExistsEx](functions/vuFileExistsEx.md) | Extended version of vuFileExists, with support for more advanced checks. |
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
| [vuGetDriveListEx](functions/vuGetDriveListEx.md) | Extended version of vuGetDriveList, with more detailed drive information. |

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)