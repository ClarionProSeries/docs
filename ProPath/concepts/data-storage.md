---
title: "Data vs. INI Storage"
description: "How ProPath separates data files from INI and configuration files for flexible deployment."
keywords: ["ProPath", "Clarion", "data storage", "INI files", "system path", "main path"]
page_type: "concepts"
last_updated: "2025-10-06"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Data vs. INI Storage

ProPath gives you the ability to separate **data storage** from **settings storage** for fine control over where application files reside.  It also makes it possible to define separate locations for network file paths as well as those on the local PC.  

This is also an important feature for multi-user installs where data might reside on a network drive and per-user settings need to be stored on the local PC.

---

To accomplish this, ProPath lets you define multiple storage locations.

#### MAIN Data Path
Typically the path where your data files exist.

#### SYSTEM Data Path
Usually the path where your settings files exist along with any per-user or per-machine type files.

#### OTHER Paths
Define any number of other locations and direct either data or settings files into them.  You can also use this feature and the ProPath #CODE templates or classes to be able to open Windows Explorer to those locations easily.

---

#### Multiple Data Sets

ProPath gives you the ability to easily manage multiple data sets.  This can be useful for distributing demo data, creating training data, or managing archived data such as per-year collections.

---

ProPath automatically initializes all defined paths during startup, ensuring consistency and simplifying support.

By default, data files defined in your dictionary are automatically mapped to the MAIN Data Path, but you can also map specific files (data or settings) into any defined location.

ProPath can also skip path management for certain data files (such as SQL) based on their driver definitions in the application dictionary.

This makes it easy to use ProPath in mixed data environments and allows Clarion developers who use server-based SQL systems to still benefit from ProPath’s path management for local data and settings files.

See also: [Path Management](path-management.md)

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
