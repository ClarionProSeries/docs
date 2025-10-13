---
title: "Deploying Firebird Embedded"
description: "Lists the files required to deploy Firebird Embedded alongside Clarion applications using ProPath."
keywords: ["ProPath", "Clarion", "Firebird", "embedded", "deployment", "files", "DLL"]
page_type: "concepts"
last_updated: "2025-10-08"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Deploying Firebird Embedded

ProPath fully supports **Firebird Embedded** databases, but Firebird itself must be correctly deployed with your Clarion application.

The files listed below were those used when building and testing our ProPath Firebird demo applications.  

They reflect the structure of a typical Firebird Embedded deployment at the time of writing, but the exact file set may change in future Firebird releases.

---

## Important Disclaimer

> The list below is provided as a **guideline only**.  
> File names, folder structure, and dependency requirements can change at any time based on the version of Firebird you deploy.  
> Always confirm the correct files by consulting the official Firebird documentation or distribution package for your specific version.

---

## Required Files for Firebird Embedded

These files must be present in the same folder as your EXE:

- `fbclient.dll` - Firebird client library and embedded engine  
- `firebird.conf` - optional configuration file (recommended if you need to override defaults)  
- `firebird.msg` - error message text file  
- `icudt73.dll`, `icuin73.dll`, `icuuc73.dll` - ICU Unicode libraries (required for Firebird 3 and newer)  
- `plugins\engine13.dll` - embedded engine plugin  
- `plugins\legacy_auth.dll` - required if you allow SYSDBA/masterkey logins  
- `intl\fbintl.dll` and `intl\fbintl.conf` - required if your database uses non-default character sets  
- Your `.fdb` database file(s)

**Optional and usually not needed:**  
- `plugins\udr\` folder - only required if your database uses User Defined Routines (UDRs)

### A note about separate Firebird server or ODBC installs

When you are using an embedded Firebird database, your end user does not have to download or install Firebird separately.
All necessary components are contained in the client files you deploy with your EXE, and they operate entirely in-process.

If a full Firebird server or ODBC installation already exists on the user’s system, it will not interfere.
Windows always loads the fbclient.dll located in the same folder as your EXE first, so your embedded copy takes priority.

If you use the Firebird ODBC driver, it does not require a Firebird server installation either. It simply connects through the fbclient.dll you include with your application.

---

## Example Connection Strings

*Note that on Clarion 9.x you will need to double the { character in the connection string or else the Clarion Lexer will complain about it at compile time.  This was fixed in later versions of Clarion.*

### Without ProPath (database beside EXE)
```clarion
GLO:dbOwner = 'DRIVER={Firebird ODBC Driver};' & |
              'UID=SYSDBA;' & | 
              'PWD=masterkey;' & |
              'DBNAMEALWAYS=' & CLIP(LONGPATH(PATH())) & '\People.fdb;' & |
              'CHARSET=UTF8;' & |
              'DIALECT=3'
```

### With ProPath (database in managed folder)
```clarion
GLO:dbOwner = 'DRIVER={Firebird ODBC Driver};' & |
              'UID=SYSDBA;' & | 
              'PWD=masterkey;' & |
              'DBNAMEALWAYS=PROPATH:\People.fdb;' & |
              'CHARSET=UTF8;' & |
              'DIALECT=3'
```

ProPath replaces **PROPATH:** at runtime with the correct dataset folder path,  
allowing you to manage multiple data sets or switch between embedded and client/server setups without code changes.

---

## Additional Notes

- The above examples and file lists were tested using **Firebird Embedded 4.0.6.3221-0 (Win32)**.  
- If you deploy a different Firebird version, verify all dependency files in the `/plugins`, `/intl`, and root folders.  
- Firebird’s ICU library filenames often change with new builds (for example, `icudt74.dll` in later versions).  

---

See also: [Firebird Support](firebird-support.md) | [SQLite Support](sqlite-support.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
