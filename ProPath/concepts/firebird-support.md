---
title: "Firebird Support"
description: "Explains ProPath dedicated handling for Firebird embedded and client/server configurations."
keywords: ["ProPath", "Clarion", "Firebird", "embedded", "database"]
page_type: "concepts"
last_updated: "2025-10-08"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Firebird Support

ProPath includes built-in support for **Firebird Embedded** and bypass support for **Firebird Client/Server** deployments.  

This is accomplished by first enabling Firebird support in the ProPath Global Template and then embedding the token **PROPATH:** in the connection string.

Enabling Firebird support automatically disables ODBC driver suppression in the ProPath template, since Firebird uses an ODBC-style connection in Clarion.

---

### Implementation

Here are two typical connection strings for using Clarion with a Firebird embedded database. Both assume that the Firebird Client DLL and its associated files exist in the same folder as your application.

This is a normal connection string that connects Clarion to Firebird: 

```
  GLO:dbOwner = 'DRIVER={Firebird ODBC Driver};' & |
                'UID=SYSDBA;' & | 
                'PWD=masterkey;' & |
                'DBNAMEALWAYS=' & CLIP(LONGPATH(PATH())) & '\People.fdb;' & |
                'CHARSET=UTF8;' & |
                'DIALECT=3'
```

This is the same connection string, but it gives ProPath control over the database file path: 

```
  GLO:dbOwner = 'DRIVER={Firebird ODBC Driver};' & |
                'UID=SYSDBA;' & | 
                'PWD=masterkey;' & |
                'DBNAMEALWAYS=PROPATH:\People.fdb;' & |
                'CHARSET=UTF8;' & |
                'DIALECT=3'
```

The use of **PROPATH:** in the database path will trigger ProPath to make a runtime substitution of the actual path to the managed database file.

That simple substitution is all you need to control where your Firebird database resides and to allow ProPath to create and manage multiple data sets.

---

### Important

Note that both strings use **DBNAMEALWAYS** instead of **DBNAME** when specifying the database.

Using DBNAMEALWAYS along with the CREATE attribute in the Clarion dictionary definition for the table will cause the file to be created if it does not exist.

If you need to suppress this behavior, you can use DBNAME, but then you will need to use the ProPath First Deploy feature to distribute a seed database with your program.

---

### Switching to a Server Connection

If you want to allow switching between embedded and client/server configurations at runtime,  
you can load the connection string dynamically from an external INI file or configuration setting.

Insert your connection string assignment at the following ProPath Global template embed point in your Clarion application:

**ProPath: Early Embed Point for database connection strings**

You can also use a **GETINI** statement here to retrieve your external connection string and assign it to **GLO:dbOwner**, 
allowing your users to change connection details without recompiling your program.

This ensures ProPath initializes the connection before datasets are opened and substitutes the correct paths automatically.

---

ProPath is also compatible with the upcoming **Firebird 2** driver from **CapeSoft's File Driver Kit**.  
For more information see:  
[https://www.capesoft.com/accessories/filedriverkitsp.htm](https://www.capesoft.com/accessories/filedriverkitsp.htm)

See also: [Deploying Firebird Embedded](firebird-embedded-files.md) | [SQLite Support](sqlite-support.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
