[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# All Functions

This page lists all vuFileTools functions with a short description and links to their reference topics.

| Function | Description |
|----------|-------------|
| [vuAddStartupShortcut](vuAddStartupShortcut.md) | Creates a shortcut (.lnk file) in the Windows Startup folder so that the specified program runs automatically when Windows starts. |
| [vuAnimateCloseBlend](vuAnimateCloseBlend.md) | Animates the closing of a window by blending it into the background. The animation duration is defined by `dwTime` in milliseconds. |
| [vuAnimateCloseCenter](vuAnimateCloseCenter.md) | Animates the closing of a window from the center outward. The animation duration is defined by `dwTime` in milliseconds. |
| [vuAnimateCloseRoll](vuAnimateCloseRoll.md) | Animates the closing of a window, rolling in the specified direction(s). The animation duration is defined by `dwTime` in milliseconds. |
| [vuAnimateCloseSlide](vuAnimateCloseSlide.md) | Animates the closing of a window by sliding in the specified direction(s). The animation duration is defined by `dwTime` in milliseconds. |
| [vuAnimateOpenBlend](vuAnimateOpenBlend.md) | Animates the opening of a window by blending it from the background. The animation duration is defined by `dwTime` in milliseconds. |
| [vuAnimateOpenCenter](vuAnimateOpenCenter.md) | Animates the opening of a window from the center outward. The animation duration is defined by `dwTime` in milliseconds. |
| [vuAnimateOpenRoll](vuAnimateOpenRoll.md) | Animates the opening of a window, rolling in the specified direction(s). The animation duration is defined by `dwTime` in milliseconds. |
| [vuAnimateOpenSlide](vuAnimateOpenSlide.md) | Animates the opening of a window by sliding in the specified direction(s). The animation duration is defined by `dwTime` in milliseconds. |
| [vuBIOSSerialNo](vuBIOSSerialNo.md) | Returns the BIOS serial number as a CSTRING (alphanumeric value). |
| [vuBatteryLife](vuBatteryLife.md) | Returns the current battery life percentage. If the PC is running on AC power, the function returns 101. |
| [vuBinary](vuBinary.md) | Returns the binary representation of a LONG value. |
| [vuCPUMake](vuCPUMake.md) | Returns the make and model of the PCs CPU. |
| [vuCPUSerialNo](vuCPUSerialNo.md) | Returns the CPU serial number. Valid only for Intel Pentium III processors. On Pentium IV and newer, a consistent number may be returned, but it is not the actual CPU serial number and is not guaranteed to be unique. |
| [vuCPUSpeed](vuCPUSpeed.md) | Measures the speed of the CPU and returns the value in megahertz. |
| [vuCPUusage](vuCPUusage.md) | Measures the percentage of CPU usage between calls to this function. The returned value represents the average CPU usage across the interval since the last call. The function compensates internally for systems with multiple processors. |
| [vuCRC32](vuCRC32.md) | Calculates a 32-bit CRC (Cyclic Redundancy Check) for the provided parameter. If the parameter is a valid file path, the CRC is calculated on the file contents. Otherwise, the CRC is calculated on the provided value. |
| [vuCenterWindow](vuCenterWindow.md) | Centers any window on the screen given its handle. |
| [vuChangeDisplay](vuChangeDisplay.md) | Tests or dynamically changes the PCs display settings (width, height, and color depth). This function ensures only supported settings are applied. Unsupported combinations of width, height, depth, or refresh rate will return a failure. Use this function to set screen resolution and restore it when your program exits. |
| [vuCleanBoot](vuCleanBoot.md) | Checks whether the PC was last booted normally (not in Safe Mode). Under Safe Mode, most drivers are not loaded. Use this function at the start of your application to warn the user or terminate if required drivers are missing. |
| [vuClearRecentDocs](vuClearRecentDocs.md) | Clears all entries in the Windows Recent Documents folder (accessible from the Start menu). |
| [vuClientHeight](vuClientHeight.md) | Returns the current screen client height (e.g., 600, 768, 1024). |
| [vuClientWidth](vuClientWidth.md) | Returns the current screen client width. |
| [vuCloseDisable](vuCloseDisable.md) | Disables the ability to close a window by removing the Close (X) button, given the window handle. |
| [vuCompress](vuCompress.md) | Compresses a source file using the Huffman compression algorithm and saves it as the specified target file. The source file remains unchanged. |
| [vuComputerName](vuComputerName.md) | Returns the name of the computer on which the application is running. |
| [vuCopy](vuCopy.md) | Copies files from one location to another. Supports wildcards and optional subdirectory copying. Can copy across drives, including network drives. |
| [vuCreateCompressedFolder](vuCreateCompressedFolder.md) | Creates a new folder at the specified path and enables NTFS compression on it. |
| [vuCreateDirectory](vuCreateDirectory.md) | Creates an entire directory path in one command. Any number of subdirectories can be included in `FilePath`. |
| [vuCreateHardLink](vuCreateHardLink.md) | Creates a hard link to an existing file. A hard link allows two filenames to reference the same physical file data on disk. |
| [vuCreateJunction](vuCreateJunction.md) | Creates a junction point that links one directory to another. A junction allows a folder to appear in multiple locations on the file system. |
| [vuCreateLink](vuCreateLink.md) | Creates a Windows shortcut (link) file. Shortcuts allow programs to be started from locations such as the desktop, start menu, or other system folders. `vuCreateLink` supports eight default locations. |
| [vuCreateLinkEx](vuCreateLinkEx.md) | Creates a Windows shortcut (link) file with extended options. This version allows specifying a working directory and a comment in addition to the parameters supported by `vuCreateLink`. |
| [vuCreateSymbolicLink_Dir](vuCreateSymbolicLink_Dir.md) | Creates a symbolic link (symlink) to an existing directory. A symlink acts as a shortcut at the file system level, allowing another folder path to point to the target directory. |
| [vuCreateSymbolicLink_File](vuCreateSymbolicLink_File.md) | Creates a symbolic link (symlink) to an existing file. A symlink acts as a shortcut at the file system level, allowing another path to point to the target file. |
| [vuCurrentPath](vuCurrentPath.md) | Returns the path from which the current program is executing. |
| [vuDelete](vuDelete.md) | Deletes one or more files or directories, with the option to include subdirectories and send items to the Recycle Bin. This function is extremely powerful and must be used with caution. |
| [vuDesktopIcons](vuDesktopIcons.md) | Hides or unhides the entire Windows desktop, including icons, taskbar, and system tray. Useful for POS and commercial applications that require exclusive access to the screen. Can be combined with `vuDisableWindowsKey` to fully lock down the environment. |
| [vuDisableOthers](vuDisableOthers.md) | Disables or enables all other windows that contain the specified text in their title, based on the value of `wDisable`. |
| [vuDiskLabel](vuDiskLabel.md) | Returns the volume label of the root directory of the C: drive. |
| [vuDiskSerialNo](vuDiskSerialNo.md) | Returns the volume serial number of the root directory on the C: drive. While commonly used for software licensing, note that serial numbers are not guaranteed to be unique. |
| [vuDiskSpace](vuDiskSpace.md) | Returns the actual size of the specified disk in bytes. Unlike older APIs, this function is not limited to 2 GB. |
| [vuDriveType](vuDriveType.md) | Returns the type of disk drive for the given drive letter. |
| [vuEZRegGet](vuEZRegGet.md) | Retrieves data from the Windows registry that was stored using `vuEZRegPut`. Designed for simplicity, this function does not require knowledge of the registry structure. |
| [vuEZRegPut](vuEZRegPut.md) | Saves a value in the Windows registry without requiring knowledge of the registry key structure. The function automatically creates the required key and subkeys. Keys are stored under: |
| [vuElevationType](vuElevationType.md) | Determines the type of user token for the current process. |
| [vuEmailClient](vuEmailClient.md) | Returns the name of the PCs default email client. |
| [vuEndDriveEnum](vuEndDriveEnum.md) | Finalizes the drive enumeration sequence and releases internal resources allocated by `vuStartDriveEnum()`. |
| [vuEndDriveEnumEx](vuEndDriveEnumEx.md) | Finalizes the extended drive enumeration sequence and releases any resources allocated by `vuStartDriveEnumEx()`. |
| [vuEnumerateFolderA](vuEnumerateFolderA.md) | Enumerates the contents of a specified folder and prepares entries for retrieval with `vuGetEnumeratedEntryA`. |
| [vuEnumerateStartupItems](vuEnumerateStartupItems.md) | Enumerates all items in the Windows Startup folders. Use this function to determine how many startup items exist for a given scope. |
| [vuExplorerFileType](vuExplorerFileType.md) | Returns the file type description as shown in Windows Explorer for the specified file. |
| [vuExtractFileName](vuExtractFileName.md) | Returns the file name portion of a fully qualified path and filename. |
| [vuExtractFileNameEx](vuExtractFileNameEx.md) | Extracts just the file name from a full file path. |
| [vuExtractFilePath](vuExtractFilePath.md) | Returns the drive and path portion of a fully qualified file specification. |
| [vuFadeIn](vuFadeIn.md) | Fades in a window over approximately one second when first opened. Typically used together with `vuTransparent` and `vuFadeOut` for full fade-in/fade-out effects. |
| [vuFadeInOthers](vuFadeInOthers.md) | Fades in other windows whose title contains the specified name or phrase. If `wName` is left blank, all other running windows are affected. Useful for restoring windows after using `vuFadeOutOthers`. |
| [vuFadeOut](vuFadeOut.md) | Fades out a window over approximately one second when it is being closed. Typically used together with `vuTransparent` and `vuFadeIn` for full fade-in/fade-out effects. |
| [vuFadeOutOthers](vuFadeOutOthers.md) | Fades out other windows whose title contains the specified name or phrase. If `wName` is left blank, all other running windows are affected. Useful for highlighting your application by dimming the rest of the desktop environment. |
| [vuFileCount](vuFileCount.md) | Counts the number of files that match the specified mask. Wildcards are supported. Unlike Clarions built-in `EXISTS()` function, `vuFileCount` does not affect file creation, last written, or access dates. |
| [vuFileDate](vuFileDate.md) | Returns the creation, last written, or last accessed date of a specified file. |
| [vuFileExists](vuFileExists.md) | Checks whether a specified file exists on disk. |
| [vuFileExistsEx](vuFileExistsEx.md) | Checks whether a specified file exists, with optional waiting and polling. |
| [vuFileSize](vuFileSize.md) | Returns the size of a file without opening it, ensuring that file dates and times are not affected. |
| [vuFileTime](vuFileTime.md) | Returns the creation, last written, or last accessed time of a specified file. |
| [vuFileType](vuFileType.md) | Determines the executable type of a file based on its contents, not its extension. |
| [vuFindFile](vuFindFile.md) | Searches for a specific file name in one or more specified locations. Multiple search locations can be provided by separating them with semicolons. |
| [vuFlashWindow](vuFlashWindow.md) | Flashes the specified window (both its title bar and its taskbar button) the given number of times. The flash rate is 4 per second. |
| [vuFolderDate](vuFolderDate.md) | Returns the creation date of a folder in standard Clarion date format. |
| [vuFolderExists](vuFolderExists.md) | Checks if a specified folder (path) exists. Supports mapped drives and UNC paths. |
| [vuFolderTime](vuFolderTime.md) | Returns the creation time of a folder in standard Clarion time format. |
| [vuFolderWatchCheck](vuFolderWatchCheck.md) | Checks the status of a folder monitoring thread started with `vuFolderWatchStart`. Used to detect when changes occur in a watched folder. |
| [vuFolderWatchStart](vuFolderWatchStart.md) | Launches a Windows thread to monitor changes to the specified folder or its contents. Changes include file additions, modifications, or deletions within the folder or its subfolders. |
| [vuFontDirectory](vuFontDirectory.md) | Returns the fully qualified path of the Windows font directory. |
| [vuFontLoad](vuFontLoad.md) | Loads the specified font into the Windows font table, making it available for immediate use without requiring a reboot. |
| [vuFontUnload](vuFontUnload.md) | Unloads the specified font from the Windows font table, making it unavailable for use until reboot or reinstallation. |
| [vuFreeSpace](vuFreeSpace.md) | Returns the available free space on the specified drive without the 2 GB limit imposed by older APIs. |
| [vuGetAttributes](vuGetAttributes.md) | Returns a bitmask representing the attributes of the specified file. Multiple attributes can be combined. |
| [vuGetDefaultPrinter](vuGetDefaultPrinter.md) | Returns the name of the PCs default printer. Note that this may not match the printer currently selected by Clarion or the Report Writer. |
| [vuGetDriveList](vuGetDriveList.md) | Retrieves a list of available drive roots and writes the result into the caller-provided buffer. |
| [vuGetDriveListEx](vuGetDriveListEx.md) | Retrieves an extended list of available drives with detailed information for each. |
| [vuGetDriveSpace](vuGetDriveSpace.md) | Retrieves free and total space for a specified drive and returns the result as a formatted string. |
| [vuGetEnumeratedEntryA](vuGetEnumeratedEntryA.md) | Retrieves information about a single entry from the results of a previous `vuEnumerateFolderA` call. |
| [vuGetNextDrive](vuGetNextDrive.md) | Retrieves the next available drive from the internal enumeration list, along with its type. |
| [vuGetNextDriveAuto](vuGetNextDriveAuto.md) | Retrieves the next available drive and its type, with automatic start and cleanup. |
| [vuGetNextDriveEx](vuGetNextDriveEx.md) | Retrieves extended information about the next available drive. |
| [vuGetNextDriveExAuto](vuGetNextDriveExAuto.md) | Retrieves extended information about the next available drive with automatic initialization and cleanup. |
| [vuGetStartupFolder](vuGetStartupFolder.md) | Retrieves the file system paths for the current users Startup folder and the common (all users) Startup folder. |
| [vuGetStartupItem](vuGetStartupItem.md) | Retrieves information about a specific startup item, including its name, path, and type. Use in combination with `vuEnumerateStartupItems` to list all startup entries. |
| [vuGetVolumeLabel](vuGetVolumeLabel.md) | Returns the volume label of the specified root directory. Supports both local drives and UNC paths. |
| [vuHexadecimal](vuHexadecimal.md) | Converts a LONG value into its hexadecimal representation. |
| [vuHideStartButton](vuHideStartButton.md) | Hides or shows the Windows Start button based on the specified flag. |
| [vuIPAddress](vuIPAddress.md) | Returns the specified IP address of the PC in dot notation. Use `vuIPAddressCount` to determine how many IP addresses are available. |
| [vuIPAddressCount](vuIPAddressCount.md) | Returns the number of IP addresses configured on the PC. Multiple IP addresses may exist due to multiple NICs, modems, or virtual adapters. |
| [vuISOS64](vuISOS64.md) | Determines whether the operating system is 64-bit. |
| [vuIdleTime](vuIdleTime.md) | Returns the number of seconds the system has been idle (no keyboard or mouse activity). |
| [vuIsAdmin](vuIsAdmin.md) | Determines whether the current user belongs to an Administrator account. Useful for checking if the program has sufficient privileges to perform system-level functions. |
| [vuIsDriveReady](vuIsDriveReady.md) | Checks whether the specified drive is ready for use (e.g., contains media and is accessible). |
| [vuIsElevated](vuIsElevated.md) | Checks whether the current process is running with elevated privileges (administrative rights). |
| [vuIsFolderCompressed](vuIsFolderCompressed.md) | Checks whether a specified folder is NTFS-compressed. |
| [vuIsNTFSCompressed](vuIsNTFSCompressed.md) | Checks whether the specified file or folder is NTFS-compressed. Works with both individual files and directories. |
| [vuIsNetworkSlow](vuIsNetworkSlow.md) | Determines whether the primary network connection is slower than a specified threshold. Uses the speed reported by `vuPrimaryLinkSpeed()`. |
| [vuIsRunning](vuIsRunning.md) | Determines if a program is already running by checking for a named mutex. If the mutex does not exist, the function creates it. This is typically used to prevent multiple instances of the same application from running. |
| [vuIsRunningCheck](vuIsRunningCheck.md) | Determines if a program is already running by checking for a named mutex. Unlike `vuIsRunning`, this function only checks if the mutex exists and does not create one. |
| [vuKeepChars](vuKeepChars.md) | Returns a modified version of `Strg` containing only those characters found in `Chars`. Useful for extracting digits or identifiers from strings with mixed content. |
| [vuMACAddress](vuMACAddress.md) | Returns the MAC address of the specified network adapter. Use `vuMACCount()` to determine how many adapters are available. |
| [vuMACCount](vuMACCount.md) | Returns the number of Media Access Control (MAC) adapters found on the PC. |
| [vuMACDesc](vuMACDesc.md) | Returns the adapter description for the specified network adapter. Use `vuMACCount()` to determine how many adapters are available. |
| [vuMACType](vuMACType.md) | Returns the adapter type for the specified network adapter. Use `vuMACCount()` to determine how many adapters are available. |
| [vuMCIsend](vuMCIsend.md) | Sends the specified command string to the Media Control Interface (MCI) device. |
| [vuMailSlotCheck](vuMailSlotCheck.md) | Checks the specified mail slot for pending messages and places the next message (if any) into `dBuffer`. |
| [vuMailSlotCreate](vuMailSlotCreate.md) | Creates a mail slot in your application for receiving messages from other applications on the same PC or within the same domain. |
| [vuMailSlotDestroy](vuMailSlotDestroy.md) | Destroys a previously created mail slot, releasing the associated system resources. |
| [vuMailSlotDestroyAll](vuMailSlotDestroyAll.md) | Destroys all mail slots on the local PC. |
| [vuMailSlotSend](vuMailSlotSend.md) | Sends data to a mail slot in another application, either locally or across the domain. |
| [vuMapped2UNC](vuMapped2UNC.md) | Converts a fully qualified path and filename that uses a mapped drive letter into the equivalent UNC (Universal Naming Convention) path. |
| [vuMaximizeDisable](vuMaximizeDisable.md) | Disables the ability to maximize a window (by double-clicking the title bar or using the maximize button) for the specified window handle. |
| [vuMemoryFree](vuMemoryFree.md) | Returns the amount of unused physical memory currently available on the system. |
| [vuMemoryPercentUsed](vuMemoryPercentUsed.md) | Returns the percentage (0100) of physical memory currently in use on the system. |
| [vuMemoryTotal](vuMemoryTotal.md) | Returns the total amount of physical memory installed on the system. |
| [vuMinimizePrograms](vuMinimizePrograms.md) | Minimizes or restores all running programs that support minimize/restore actions. |
| [vuMove](vuMove.md) | Moves one or more files from a source location to a destination. Supports wildcards and can optionally include subdirectories. Works across local and network drives. |
| [vuMoveDisable](vuMoveDisable.md) | Disables the ability to move a window, given its handle. |
| [vuNetworkPresent](vuNetworkPresent.md) | Detects whether a network is present and returns the type of network detected. |
| [vuNetworkUser](vuNetworkUser.md) | Returns the network user name of the current process. |
| [vuNumber2String](vuNumber2String.md) | Returns a string containing the number spelled out in words. |
| [vuOSVersion](vuOSVersion.md) | Returns the Windows Operating System version as a sequential number for easy comparison in code. The current implementation uses RtlGetVersion from ntdll to obtain accurate version info, including Windows 10 and Windows 11, regardless of application manifests. |
| [vuOctal](vuOctal.md) | Converts a LONG value into its octal representation. |
| [vuPack](vuPack.md) | Takes all files matching the specified file mask and combines them into a single file. |
| [vuPlayWav](vuPlayWav.md) | Plays a `.wav` audio file and optionally waits for playback to complete before returning. |
| [vuPrimaryLinkSpeed](vuPrimaryLinkSpeed.md) | Retrieves the speed of the primary network connection, in megabits per second (Mbps). |
| [vuPrintExists](vuPrintExists.md) | Sends the specified file to the default printer if the file exists. |
| [vuPrintExistsEx](vuPrintExistsEx.md) | Sends the specified file to the default printer if it exists. Optionally waits for the file to appear, polling at the given interval, before printing. |
| [vuPrintExistsShow](vuPrintExistsShow.md) | Sends a file to the default printer and displays the print job window using the specified ShowCmd setting. |
| [vuPrintScreen](vuPrintScreen.md) | Captures the Windows Desktop, prompts the user to select a printer, and prints a copy of the captured desktop image. |
| [vuPrintTextFile](vuPrintTextFile.md) | Prints the contents of a text file to either the default printer or a printer selected by the end user. |
| [vuPrintToExists](vuPrintToExists.md) | Sends a file to the specified printer and checks whether the print job was successfully queued. |
| [vuPrintToExistsEx](vuPrintToExistsEx.md) | Sends a file to the specified printer and waits for confirmation that the print job was queued. |
| [vuPrintWindow](vuPrintWindow.md) | Prints the current active window (not the entire desktop). |
| [vuPrinterCount](vuPrinterCount.md) | Returns the number of printers installed on the PC. |
| [vuPrinterName](vuPrinterName.md) | Returns the name of the printer defined by the specified index. |
| [vuProcessorCount](vuProcessorCount.md) | Returns the number of logical processors available on the system. |
| [vuQuotes](vuQuotes.md) | Returns the specified string with leading and trailing quotation marks added. |
| [vuRecordWav](vuRecordWav.md) | Records audio from the microphone input and saves it as a WAV file. |
| [vuRemoveChars](vuRemoveChars.md) | Returns a modified version of `Strg` with the characters specified in `Chars` removed. Behavior depends on the `AllChars` flag. |
| [vuRemoveStartupShortcut](vuRemoveStartupShortcut.md) | Removes a shortcut (.lnk file) from the Windows Startup folder so that the specified program no longer runs automatically at startup. |
| [vuReplaceChars](vuReplaceChars.md) | Returns a modified version of `MainStrg` with all occurrences of `OldStrg` replaced by `NewStrg`. The replacement substring does not need to be the same length as the original. |
| [vuReplaceCharsInFile](vuReplaceCharsInFile.md) | Searches through a text file and replaces all occurrences of `OldStrg` with `NewStrg`. The replacement substring does not need to be the same length as the original. |
| [vuRun](vuRun.md) | Runs a program using the Windows Shell with the specified window style and wait behavior. This function is useful for launching support programs (for example, utilities or file conversions) in a controlled manner, including hidden execution. |
| [vuRunDelay](vuRunDelay.md) | Runs the specified file after waiting for a specified delay. |
| [vuRunEx](vuRunEx.md) | Runs the specified file with optional command-line parameters, working directory, and window display options. |
| [vuRunExDelay](vuRunExDelay.md) | Runs an external program with optional parameters and working directory after a specified delay. |
| [vuRunExists](vuRunExists.md) | Attempts to run the specified file if it exists. This is a quick way to launch an application or document only if the file is present. |
| [vuRunExistsEx](vuRunExistsEx.md) | Attempts to run the specified file if it exists. Optionally waits for the file to appear, polling at the given interval, before running it. |
| [vuRunOnReboot](vuRunOnReboot.md) | Arms or disarms automatic restart of your application after an abnormal termination or system shutdown. Unlike Startup, this only restarts the program if it was running at the time of the crash or power loss. If the application ends normally, it will not restart on reboot. |
| [vuSayText](vuSayText.md) | Converts the specified text to speech using the Microsoft Speech API (SAPI). The function will not return until the spoken text has finished playing. |
| [vuScreen2Bmp](vuScreen2Bmp.md) | Captures the current Windows desktop and saves it as a bitmap file. |
| [vuScreenHeight](vuScreenHeight.md) | Returns the current screen height in pixels. |
| [vuScreenWidth](vuScreenWidth.md) | Returns the current screen width in pixels. |
| [vuSelfDelete](vuSelfDelete.md) | Schedules the applications executable file to be automatically deleted after the program terminates. Your application must exit immediately after calling this function. |
| [vuServerDate](vuServerDate.md) | Returns the system date from the specified server in standard Clarion date format. If no server name is provided, the local PC date is returned. The result is automatically adjusted for time zones. |
| [vuServerTZOffset](vuServerTZOffset.md) | Returns the time zone bias, in minutes, of the specified server (or local PC) relative to UTC. |
| [vuServerTime](vuServerTime.md) | Returns the system time from the specified server in standard Clarion time format. If no server name is provided, the local PC time is returned. The result is automatically adjusted for time zones. |
| [vuServiceStatus](vuServiceStatus.md) | Returns the status of a Windows service on a specified client or server. Can also be used on the local system when no server name is provided. |
| [vuSetAttributes](vuSetAttributes.md) | Sets or resets file attributes for the specified file or group of files. Wildcards are supported. |
| [vuSetDefaultPrinter](vuSetDefaultPrinter.md) | Sets the PC's default printer to the printer specified by name. If the name is left blank, the first printer in the system list will be set as default. |
| [vuSetFileDate](vuSetFileDate.md) | Sets the date and time attributes of a specified file. Updates creation, last modified, and last accessed timestamps. |
| [vuSetFolderCompression](vuSetFolderCompression.md) | Enables or disables NTFS compression on the specified folder. |
| [vuSetFolderDate](vuSetFolderDate.md) | Sets the date and time attributes of a specified folder. |
| [vuSetNTFSCompression](vuSetNTFSCompression.md) | Enables or disables NTFS compression on the specified file or folder. |
| [vuShell](vuShell.md) | Runs a file with its associated executable. For example, opening a Word document will launch Microsoft Word. |
| [vuShellDelay](vuShellDelay.md) | Launches a file using the Windows shell (honors file associations) after waiting for a specified delay. |
| [vuShellEx](vuShellEx.md) | Launches a file using the Windows shell (e.g., respects file associations) with optional parameters, working directory, and window display options. |
| [vuShellExDelay](vuShellExDelay.md) | Runs an external program using the Windows Shell with optional parameters and working directory, after a specified delay. |
| [vuShutDown](vuShutDown.md) | Logs off, reboots, or powers down the PC depending on the action specified. |
| [vuStartDriveEnum](vuStartDriveEnum.md) | Begins a drive enumeration session. |
| [vuStartDriveEnumEx](vuStartDriveEnumEx.md) | Initializes extended drive enumeration. |
| [vuStartEmail](vuStartEmail.md) | Uses the `MailTo` protocol to start the default desktop email client with the specified recipient, subject, and body text. The user must manually send the email. |
| [vuStringParse](vuStringParse.md) | Parses a string based on the specified delimiter and returns the requested segment. The delimiter can be one or more characters. |
| [vuSystemDirectory](vuSystemDirectory.md) | Returns the path to the Windows System Directory. |
| [vuTaskBar](vuTaskBar.md) | Hides or unhides the Windows Taskbar, including the Start button. Intended for scenarios such as POS applications where a clean, uncluttered background is desirable. |
| [vuTempPath](vuTempPath.md) | Returns the path to the Windows temporary directory. |
| [vuTerminateOthers](vuTerminateOthers.md) | Terminates all **other** running programs whose primary window title contains the specified string. Can be used to close applications such as Word, Excel, or any program whose window title matches the given criteria. |
| [vuToolWindow](vuToolWindow.md) | Converts a standard window into a tool window (or reverts it back). Tool windows have a smaller title bar and do not appear on the Windows Taskbar. |
| [vuTransparent](vuTransparent.md) | Sets the transparency level of a window, given its handle. Transparency can range from completely invisible (0) to fully opaque (255). |
| [vuTransparentColorKey](vuTransparentColorKey.md) | Makes a specific color in a window transparent, given its handle and the RGB color components. This allows parts of the window to appear see-through where the chosen color is displayed. |
| [vuTransparentOthers](vuTransparentOthers.md) | Sets the layered window attribute on all other running windows whose primary title contains `NameContains`, and applies the specified transparency level. |
| [vuUncompress](vuUncompress.md) | Uncompresses a file created with `vuCompress()` using a fast Huffman-based algorithm (medium compression ratio). The source file remains unchanged. |
| [vuUnpack](vuUnpack.md) | Unpacks the contents of a packed file created with `vuPack()` and saves the individual files into the specified directory. |
| [vuUserName](vuUserName.md) | Retrieves the name of the current user logged into the PC. |
| [vuVirtualKeys](vuVirtualKeys.md) | Sends keystrokes contained in `CharString` to the window or control that currently has keyboard focus. Works like Clarion's `PRESS` function but allows sending multiple characters in sequence. |
| [vuVolumeLabel](vuVolumeLabel.md) | Returns the volume label of the specified root directory. Supports both mapped drives and UNC paths. |
| [vuVolumeSerialNo](vuVolumeSerialNo.md) | Returns the volume serial number of the specified root directory. Supports both mapped drives and UNC paths. |
| [vuWindow2Bmp](vuWindow2Bmp.md) | Saves the current active window to the specified bitmap file. |
| [vuWindow2BmpEx](vuWindow2BmpEx.md) | Saves any window as a bitmap file, given its window handle. |
| [vuWindow2Clipboard](vuWindow2Clipboard.md) | Saves a copy of the current active window to the clipboard. |
| [vuWindow2Front](vuWindow2Front.md) | Brings the specified window to the front (on top of other windows) and activates it. |
| [vuWindowHandle](vuWindowHandle.md) | Returns the handle of the first window whose title contains the specified name. |
| [vuWindowMove](vuWindowMove.md) | Moves any window around the screen, given its handle. The move can be absolute (relative to the screen's upper-left corner) or relative to the window's current position. Optionally, the move can be animated in steps with pauses between them. |
| [vuWindowNotOnTop](vuWindowNotOnTop.md) | Returns the specified window to its normal display order (resets the effect of `vuWindowOnTop`). |
| [vuWindowOnTop](vuWindowOnTop.md) | Brings the specified window to the front and keeps it on top until reset by `vuWindowNotOnTop`. |
| [vuWindowsDirectory](vuWindowsDirectory.md) | Returns the path of the Windows directory. |
| [vuWindowsKey](vuWindowsKey.md) | Modifies the system registry to enable or disable the Windows key on the keyboard. Changes take effect only after the computer is rebooted. |

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
