---
title: "Suppressing File Drivers"
description: "Explains how ProPath can suppress file driver loading to speed startup or reduce open file handles."
keywords: ["ProPath", "Clarion", "file drivers", "startup", "suppression"]
page_type: "concepts"
last_updated: "2025-10-06"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Suppressing File Drivers

While ProPath excels at managing data locations, not all file drivers are suited for path management. Server-based SQL data sources are a good example.

Developers using SQL server datasets still need to manage INI and configuration file locations and often need to control the placement of local supplemental data files.

To facilitate this sort of flexibility, ProPath can **suppress file driver path modification** based on the driver type defined in the data dictionary.

Version 5 of ProPath gives you full control over all supported file driver types, including those defined by the **CapeSoft File Driver Kit**  [https://www.capesoft.com/accessories/filedriverkitsp.htm](https://www.capesoft.com/accessories/filedriverkitsp.htm) 

Previous versions of ProPath had the option to suppress common driver types such as SQL, but now that ProPath supports management of embedded SQL flavors such as SQLite and Firebird you now have total control at the template level.

This flexibility allows ProPath to coexist seamlessly with any database environment, from local ISAM to enterprise SQL systems.

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
