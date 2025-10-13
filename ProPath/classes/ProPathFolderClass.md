---
title: "ProPathFolderClass"
description: "Details for ProPathFolderClass including properties and public methods grouped by function."
keywords: ["Clarion", "ProPath", "ProPathFolderClass", "paths", "registry", "INI", "first run"]
page_type: "reference"
last_updated: "2025-10-08"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# ProPathFolderClass

Manages dataset folder rules, base path selection, registry and INI mapping, and first run triggers.

---

## Key Properties

| Property | Type |
|:---|:---|
| ClassController | STRING(10) |
| BasePath | STRING(512) |
| QProPathFolderLevels | &QProPathFolderType |
| CSIDLBaseFolder | STRING(512) |
| HasCSIDLBaseFolder | BYTE |
| FullPath | STRING(512) |
| FolderLevels | LONG |
| AutoCreateFolderLevels | BYTE |
| HaltOnMissingFolders | BYTE |
| RegistryRootNode | LONG |
| HasRegistryRootNode | BYTE |
| RegistryBaseKey | STRING(255) |
| HasRegistryBaseKey | BYTE |
| RegistryValueName | STRING(255) |
| HasRegistryValueName | BYTE |
| RegistryFullKey | STRING(512) |
| HasRegistryFullKey | BYTE |
| HaltOnMissingINIFile | BYTE |
| INIControlFilePath | STRING(512) |
| HasINIControlFilePath | BYTE |
| INIControlFileName | STRING(100) |
| HasINIControlFileName | BYTE |
| INIControlFileSection | STRING(100) |
| HasINIControlFileSection | BYTE |
| INIControlFileEntry | STRING(100) |
| HasINIControlFileEntry | BYTE |
| IsFirstRunController | BYTE |
| FirstRunTrigger | STRING(10) |
| IsFirstRun | BYTE |
| TriggerValue | STRING(255) |
| FolderVarName | STRING(255) |
| HasFolderVarName | BYTE |
| UserPathMode | BYTE |
| UserSuggestMode | BYTE |
| ExploreOption | STRING(10) |
| ExportFileName | STRING(255) |
| ExportOwnerName | STRING(50) |
| ExportDataSetFolder | STRING(255) |
| ExportDataSetName | STRING(255) |
| ExportBaseFolder | STRING(255) |
| ExportSubFolder | STRING(255) |
| FD_RegistryRootNode | LONG |
| FD_RegistryBaseKey | STRING(255) |
| FD_RegistryValueName | STRING(255) |
| FD_RegistryFullKey | STRING(512) |
| FD_DeployIfNotExists | BYTE |
| FD_Completed | BYTE |
| FD_Message | STRING(255) |
| FD_PromptOverwrite | BYTE |

---

## Public Methods

| Method | Prototype | Summary |
|:---|:---|:---|
| Construct | Construct() | Class lifecycle. |
| Destruct | Destruct() | Class lifecycle. |
| InitQueues | InitQueues() | Class lifecycle. |
| DisposeQueues | DisposeQueues() | Class lifecycle. |
| ResetClass | ResetClass() | Class lifecycle. |
| SetCSIDLBase | SetCSIDLBase( LONG ProPath_CSIDL_ID ) | Select a CSIDL base for path generation. |
| SetKnownFolderBaseRaw | SetKnownFolderBaseRaw( LONG KF_Data1, SHORT KF_Data2, SHORT KF_Data3, STRING KF_Data4 ),BOOL | Select a known folder base by GUID parts. |
| GetKnownFolderPathRaw | GetKnownFolderPathRaw( LONG KF_Data1, SHORT KF_Data2, SHORT KF_Data3, STRING KF_Data4 ),STRING | Get a known folder path by GUID parts. |
| SetKnownFolderBaseGUID | SetKnownFolderBaseGUID( STRING KF_GUID_Text ),BOOL | Select a known folder base by GUID string. |
| GetKnownFolderPathGUID | GetKnownFolderPathGUID( STRING KF_GUID_Text ),STRING | Get a known folder path by GUID string. |
| AddFolderLevel | AddFolderLevel( STRING ProPath_FolderLevel ) | Append a folder level. |
| SetDataPathFromCSIDL | SetDataPathFromCSIDL(), STRING | Resolve path from CSIDL. |
| SetDataPathFromBasePath | SetDataPathFromBasePath(), STRING | Resolve path from BasePath. |
| SetFolderVarName | SetFolderVarName( STRING ProPath_FolderVarName ) | Set the variable that will receive the folder path. |
| SetUserPathMode | SetUserPathMode( BYTE ProPath_UserPathMode ) | Set user path behavior. |
| FD_BuildRegistryFullKey | FD_BuildRegistryFullKey( LONG FD_Root, STRING FD_Base, STRING FD_Company, STRING FD_Product, STRING FD_SubKey ) | Build a First Deploy registry key. |
| FD_GetRegistryStringValue | FD_GetRegistryStringValue( STRING ProPath_ValueName ), STRING | Read a registry value. |
| FD_SetRegistryStringValue | FD_SetRegistryStringValue( STRING ProPath_ValueName, STRING ProPath_Value ) | Write a registry value. |
| FD_SetINIValue | FD_SetINIValue( STRING FD_Section, STRING FD_Entry, STRING FD_Value, STRING FD_PATH, STRING FD_File ) | Write an INI value. |
| FD_GetINIValue | FD_GetINIValue( STRING FD_Section, STRING FD_Entry, STRING FD_PATH, STRING FD_File ), STRING | Read an INI value. |
| SetRegistryRootNode | SetRegistryRootNode( LONG ProPath_RegistryRootNode ) | Set registry root node. |
| SetRegistryBaseKey | SetRegistryBaseKey( STRING ProPath_RegistryBaseKey ) | Set registry base key. |
| SetRegistryValueName | SetRegistryValueName( STRING ProPath_ValueName ) | Set registry value name. |
| BuildRegistryFullKey | BuildRegistryFullKey() | Build full registry path. |
| GetRegistryStringValue | GetRegistryStringValue( STRING ProPath_ValueName ), STRING | Read registry value. |
| SetRegistryStringValue | SetRegistryStringValue( STRING ProPath_ValueName, STRING ProPath_Value ) | Write registry value. |
| ClearRegistryStringValue | ClearRegistryStringValue( STRING ProPath_ValueName ) | Clear registry value. |
| DeleteRegistryValue | DeleteRegistryValue( STRING ProPath_ValueName ) | Delete registry value. |
| DeleteRegistryKey | DeleteRegistryKey() | Delete registry key. |
| SetDataPathFromRegistry | SetDataPathFromRegistry( STRING ProPath_ValueName ), STRING | Resolve path from registry. |
| SetINIControlFilePath | SetINIControlFilePath( STRING ProPath_INIControlFilePath ) | Set INI control file path. |
| SetINIControlFileName | SetINIControlFileName( STRING ProPath_INIControlFileName ) | Set INI control file name. |
| SetINIControlFileSection | SetINIControlFileSection( STRING ProPath_INIControlFileSection ) | Set INI control file section. |
| SetINIControlFileEntry | SetINIControlFileEntry( STRING ProPath_INIControlFileEntry ) | Set INI control file entry. |
| SetDataPathFromINI | SetDataPathFromINI(), STRING | Resolve path from INI. |
| UpdateDataPathInINI | UpdateDataPathInINI( STRING ProPath_NewPath ) | Update path in INI. |
| CheckFirstRun | CheckFirstRun(), BYTE | Check and set First Run state. |
| CreatePath | CreatePath( STRING ProPath_PathToCreate ), BYTE | Create a folder path. |
| ExploreFolder | ExploreFolder() | Open a folder in Windows Explorer. |
| ExploreThisFolder | ExploreThisFolder( STRING ProPath_FolderToExplore, STRING ProPath_ExploreOption ) | Open a specific folder. |
| ExploreCSIDLFolder | ExploreCSIDLFolder( LONG ProPath_CSIDL_ID, STRING ProPath_ExploreOption ) | Open a CSIDL folder. |
| ExploreKnownFolderGUID | ExploreKnownFolderGUID( STRING KF_GUID_Text, STRING ProPath_ExploreOption ) | Open a known folder by GUID. |
| ResetExportGroup | ResetExportGroup() | Reset export group context. |
| DeployExportGroup | DeployExportGroup( STRING ProPath_ExportGroup ) | Deploy files for a named export group. |
| PSBLOBToFile | PSBLOBToFile(*BLOB b, STRING name),SIGNED | Write a BLOB to a file. |

---

## Methods grouped by function

**Lifecycle**  
Construct, Destruct, InitQueues, DisposeQueues, ResetClass

**Base selection and known folders**  
SetCSIDLBase, SetKnownFolderBaseRaw, GetKnownFolderPathRaw, SetKnownFolderBaseGUID, GetKnownFolderPathGUID

**Path building and mapping**  
AddFolderLevel, SetDataPathFromCSIDL, SetDataPathFromBasePath, SetFolderVarName, SetUserPathMode

**Registry helpers**  
FD_BuildRegistryFullKey, FD_GetRegistryStringValue, FD_SetRegistryStringValue, SetRegistryRootNode, SetRegistryBaseKey, SetRegistryValueName, BuildRegistryFullKey, GetRegistryStringValue, SetRegistryStringValue, ClearRegistryStringValue, DeleteRegistryValue, DeleteRegistryKey, SetDataPathFromRegistry

**INI helpers**  
FD_SetINIValue, FD_GetINIValue, SetINIControlFilePath, SetINIControlFileName, SetINIControlFileSection, SetINIControlFileEntry, SetDataPathFromINI, UpdateDataPathInINI

**First Run**  
CheckFirstRun

**Folder creation**  
CreatePath

**Explore functions**  
ExploreFolder, ExploreThisFolder, ExploreCSIDLFolder, ExploreKnownFolderGUID

**Deployment and export**  
ResetExportGroup, DeployExportGroup, PSBLOBToFile

---

## Calling Patterns and Return Types

Most ProPathFolderClass methods follow standard Clarion class call patterns.  
You can call them from the global ProPath instance created by the template or from a local instance of the class.

### Example Calls

```clarion
! Accessing methods through the global instance
ProPath.SetRegistryStringValue('LastFolder', 'C:\Data')
ProPath.CreatePath('C:\Data\Logs')

! Using a local instance
pf   ProPathFolderClass
  CODE
pf.Construct()
pf.SetFolderVarName('MainPath')
pf.AddFolderLevel('SubDir')
Message(pf.FullPath)
pf.Destruct()
```

### Return Conventions

| Return Type | Meaning |
|:---|:---|
| **STRING** | Returns a constructed or resolved path value. |
| **BYTE** | Boolean-style return (0 = False, 1 = True). |
| **SIGNED** | Numeric status code (0 = success, negative = error). |
| **No Return Type** | The procedure performs an action but does not return a value. |

### Notes

- `CreatePath()` returns BYTE to indicate success or failure.  
- `BuildRegistryFullKey()`, `SetRegistryStringValue()`, and similar methods do not return values.  
- `GetRegistryStringValue()` and `SetDataPathFromINI()` return STRING results.  
- The global ProPath instance is safe for standard runtime access but should not be modified concurrently from multiple threads.

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)


---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
