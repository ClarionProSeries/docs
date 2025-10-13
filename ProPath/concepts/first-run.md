---
title: "First Run"
description: "Explains what happens during the first application startup after deployment and how ProPath initializes the environment."
keywords: ["ProPath", "Clarion", "First Run", "initialization", "deployment"]
page_type: "concepts"
last_updated: "2025-10-06"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# First Run

The First Run feature of ProPath gives you complete control over what happens the first time your application is run after it is installed.

**First Run** detection occurs automatically the first time an end user launches the application after deployment.  

There are different ways that you can use to determine if a First Run condition exists such as:

- The SYSTEM Data Path folder does not exist
- There are no files in the folder
- A specific file is not in the folder

When the condition is detected, you can optionally allow the user to browse for and select a data location.

You can specify a PROCEDURE in your program to be called automatically when the First Run condition is detected.

You may also let users reset your program with a command line option such as **/FIRSTRUN**.

--- 

First Run lets ProPath verify all datasets, paths, and configuration files.  
If anything is missing, it rebuilds or prompts for correction according to your settings.

First Run ensures each workstation initializes correctly in multi-user or distributed environments.

Developers can also use this phase for default setup or configuration migration.

After First Run completes, the application transitions automatically to [First Deploy](first-deploy.md) if it is enabled.

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
