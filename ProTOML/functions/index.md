---
title: "ProTOML Low-Level API"
summary: "Advanced reference for the 40 DLL API functions."
description: "Advanced reference for the 40 DLL API functions."
keywords: ["ProTOML", "API", "advanced"]
page_type: "reference"
last_updated: "2026-10-07"
---


[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# ProTOML Low-Level API

ProTOML includes 40 low-level DLL API functions for direct or specialized integrations.

The global template and high-level Clarion wrapper are the normal interface. Most developers use [High-Level Methods](../classes/index.md) and do not need this section.

Each API page includes:

- the preferred high-level method, when one applies
- a readable function contract
- parameters and return information
- a Clarion example

## API functions

| Function | High-level method | Purpose |
| --- | --- | --- |
| [TOML_GetLicenseMode](TOML_GetLicenseMode.md) | [ReadLicenseMode](../classes/ReadLicenseMode.md) | Returns the current runtime mode: 0 blocked, 1 demo, or 2 licensed. |
| [TOML_GetLicenseStatusCode](TOML_GetLicenseStatusCode.md) | [ReadLicenseStatusCode](../classes/ReadLicenseStatusCode.md) | Returns the current license status code from the license manager. |
| [TOML_InitLicense](TOML_InitLicense.md) | [InitializeLicense](../classes/InitializeLicense.md) | Initializes the runtime license state. Returns 0 for demo mode, 1 for licensed mode, or -1 if blocked. |
| [TOML_Free](TOML_Free.md) | [Close](../classes/Close.md) | Releases a loaded TOML document and frees its associated memory. |
| [TOML_Load](TOML_Load.md) | [LoadFile](../classes/LoadFile.md) | Loads a TOML file from disk and returns a handle for use in subsequent ProTOML calls. |
| [TOML_LoadFromBuffer](TOML_LoadFromBuffer.md) | [LoadBuffer](../classes/LoadBuffer.md) | Loads TOML from exact-length ANSI or UTF-8 bytes. |
| [TOML_LoadFromString](TOML_LoadFromString.md) | [LoadText](../classes/LoadText.md) | Parses a TOML document from an in-memory string buffer and returns a handle for subsequent ProTOML calls. |
| [TOML_New](TOML_New.md) | [NewDocument](../classes/NewDocument.md) | Creates a new empty in-memory TOML document. |
| [TOML_Save](TOML_Save.md) | [SaveFile](../classes/SaveFile.md) | Saves a loaded TOML document back to disk. |
| [TOML_SaveToBuffer](TOML_SaveToBuffer.md) | [SaveBuffer](../classes/SaveBuffer.md) | Serializes a document as ANSI or UTF-8 bytes. |
| [TOML_SaveToString](TOML_SaveToString.md) | [SaveText](../classes/SaveText.md) | Serializes a loaded TOML document to a caller-supplied string buffer. |
| [TOML_GetString](TOML_GetString.md) | [GetString](../classes/GetString.md) | Returns a string value from a loaded TOML document. |
| [TOML_GetStringBuffer](TOML_GetStringBuffer.md) | [GetString](../classes/GetString.md) | Gets a string using exact-length ANSI or UTF-8 buffers. |
| [TOML_SetString](TOML_SetString.md) | [SetString](../classes/SetString.md) | Sets a string value at the specified key path in a loaded TOML document. |
| [TOML_SetStringBuffer](TOML_SetStringBuffer.md) | [SetString](../classes/SetString.md) | Sets a string using exact-length ANSI or UTF-8 buffers. |
| [TOML_GetBool](TOML_GetBool.md) | [GetBool](../classes/GetBool.md) | Returns a boolean value from a loaded TOML document as a LONG (1 = true, 0 = false). |
| [TOML_GetDouble](TOML_GetDouble.md) | [GetReal](../classes/GetReal.md) | Returns a double-precision floating-point value for the Clarion REAL boundary. |
| [TOML_GetFloat](TOML_GetFloat.md) | [GetSReal](../classes/GetSReal.md) | Returns a single-precision floating-point value for the Clarion SREAL boundary. |
| [TOML_GetInt](TOML_GetInt.md) | [GetLong](../classes/GetLong.md) | Returns an integer value (LONG) from a loaded TOML document. |
| [TOML_SetBool](TOML_SetBool.md) | [SetBool](../classes/SetBool.md) | Sets a boolean value at the specified key path in a loaded TOML document. |
| [TOML_SetDouble](TOML_SetDouble.md) | [SetReal](../classes/SetReal.md) | Sets a double-precision floating-point value from a Clarion REAL. |
| [TOML_SetFloat](TOML_SetFloat.md) | [SetSReal](../classes/SetSReal.md) | Sets a single-precision floating-point value from a Clarion SREAL. |
| [TOML_SetInt](TOML_SetInt.md) | [SetLong](../classes/SetLong.md) | Sets an integer value (LONG) at the specified key path in a loaded TOML document. |
| [TOML_GetDateTimeCombined](TOML_GetDateTimeCombined.md) | [GetDateTimeText](../classes/GetDateTimeText.md) | Returns a TOML datetime value into a Clarion SQL DateTime GROUP buffer (STRING(8) OVER structure). |
| [TOML_GetDateTimeSeparate](TOML_GetDateTimeSeparate.md) | [GetDateTimeText](../classes/GetDateTimeText.md) | Returns a TOML datetime value as separate Clarion date (LONG) and time (LONG) values. |
| [TOML_GetDateTimeString](TOML_GetDateTimeString.md) | [GetDateTimeText](../classes/GetDateTimeText.md) | Returns TOML date or time text while preserving its TOML category and offset. |
| [TOML_SetDateTimeCombined](TOML_SetDateTimeCombined.md) | [SetDateTimeText](../classes/SetDateTimeText.md) | Sets a TOML datetime value from a Clarion SQL DateTime GROUP buffer (STRING(8) OVER structure). |
| [TOML_SetDateTimeSeparate](TOML_SetDateTimeSeparate.md) | [SetDateTimeText](../classes/SetDateTimeText.md) | Sets a datetime value using separate Clarion date (LONG) and time (LONG) values. |
| [TOML_SetDateTimeString](TOML_SetDateTimeString.md) | [SetDateTimeText](../classes/SetDateTimeText.md) | Sets a TOML local or offset date/time value from TOML literal text. |
| [TOML_ArrayAppendString](TOML_ArrayAppendString.md) | [AppendString](../classes/AppendString.md) | Appends a string to a TOML array and returns the new zero-based index. |
| [TOML_ArrayAppendStringBuffer](TOML_ArrayAppendStringBuffer.md) | [AppendString](../classes/AppendString.md) | Appends an ANSI or UTF-8 string to a simple TOML array. |
| [TOML_ArrayAppendTable](TOML_ArrayAppendTable.md) | [AppendTable](../classes/AppendTable.md) | Appends a table row to a TOML array of tables and returns the new zero-based index. |
| [TOML_ArrayClear](TOML_ArrayClear.md) | [ClearArray](../classes/ClearArray.md) | Clears an existing array while preserving its kind. A missing key remains absent until the first append selects the array kind. |
| [TOML_GetArrayCount](TOML_GetArrayCount.md) | [GetArrayCount](../classes/GetArrayCount.md) | Returns the number of elements in a TOML array or array-of-tables at the specified key path. |
| [TOML_GetArrayInt](TOML_GetArrayInt.md) | [GetArrayLong](../classes/GetArrayLong.md) | Returns an integer value from a simple TOML array at the specified index. |
| [TOML_GetArrayString](TOML_GetArrayString.md) | [GetArrayString](../classes/GetArrayString.md) | Returns a string value from a simple TOML array at the specified index. |
| [TOML_GetArrayStringBuffer](TOML_GetArrayStringBuffer.md) | [GetArrayString](../classes/GetArrayString.md) | Gets a string array element using exact-length ANSI or UTF-8 buffers. |
| [TOML_GetLastErrorCode](TOML_GetLastErrorCode.md) | [GetLastError](../classes/GetLastError.md) | Returns -1 if the last ProTOML operation failed, or 0 if it succeeded. |
| [TOML_GetLastErrorText](TOML_GetLastErrorText.md) | [GetLastError](../classes/GetLastError.md) | Returns the error message from the most recent failed ProTOML operation. |
| [TOML_KeyExists](TOML_KeyExists.md) | [KeyExists](../classes/KeyExists.md) | Returns 1 if a key exists at the specified path in a loaded TOML document, 0 if not. |

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)
