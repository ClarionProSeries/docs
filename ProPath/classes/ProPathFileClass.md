---
title: "ProPathFileClass"
description: "Details for ProPathFileClass including properties and public methods."
keywords: ["Clarion", "ProPath", "ProPathFileClass", "file names", "paths"]
page_type: "reference"
last_updated: "2025-10-08"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# ProPathFileClass

Inherits from ProPathFolderClass and resolves fully qualified file names for INI and data files.

---

## Key Properties

| Property | Type |
|:---|:---|
| ProPathFileName | STRING(100) |
| FullName | STRING(512) |
| DataSource | STRING(10) |

---

## Public Methods

| Method | Prototype | Summary |
|:---|:---|:---|
| SetDataSource | SetDataSource( STRING ProPath_DataSource ) | Set the data source used to resolve the file. |
| SetFileName | SetFileName( STRING ProPath_ININame ) | Set the short file name. |
| BuildFullFileName | BuildFullFileName(), STRING | Build and return the full file name. |

---

## Simple Usage

```clarion
! Build a full INI file path under the current dataset
ppf   ProPathFileClass
  CODE
ppf.SetDataSource('INI')
ppf.SetFileName('MyApp.ini')
Message(ppf.BuildFullFileName())
```

---

## Calling Patterns and Return Types

All ProPathFileClass methods use standard Clarion class syntax and may be called directly or through inheritance from ProPathFolderClass.

### Example Calls

```clarion
ppf   ProPathFileClass
  CODE
ppf.SetDataSource('DATA')
ppf.SetFileName('Customers.tps')
Message(ppf.BuildFullFileName())
```

### Return Conventions

| Return Type | Meaning |
|:---|:---|
| **STRING**         | Returns the full file name or resolved path. |
| **No Return Type** | The procedure sets internal fields or performs an action without returning a value. |

### Notes

- `BuildFullFileName()` returns a STRING containing the fully qualified file name.  
- `SetDataSource()` and `SetFileName()` update class fields and do not return values.  
- The ProPath template calls these methods automatically when initializing INI and data files.  

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](index.md)
