---
title: "First Deploy"
description: "Explains ProPath’s First Deploy mode and how it initializes folder structures and configuration files."
keywords: ["ProPath", "Clarion", "First Deploy", "deployment", "dataset setup"]
page_type: "concepts"
last_updated: "2025-10-06"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# First Deploy

When enabled, **First Deploy** mode runs the first time your application is installed or when a new dataset is created.  It is an optional expansion of the [First Run](first-run.md) feature.

First Deploy gives you the opportunity to deploy files to locations defined by ProPath that do not exist when the program installer is run for the first time.

This can be a very powerful and useful feature as it eliminates the need to define these runtime locations inside the installation tool which is typically running elevated and out of context for normal program operation.

It is also very useful when supporting multiple datasets or deploying seed databases and lookup data.

It also makes it easy to deploy demo or training data with your application.


During this process, ProPath:

- Builds the folder structure  
- Writes initial configuration and INI files  
- Establishes default MAIN, SYSTEM and OTHER paths as defined
- Registers the dataset internally (in the case of multiple data sets) 
- Deploys files stored in a container database file into designated locations

Developers use this mode to pre-build clean deployment environments that can be replicated easily across staging and production setups.

When combined with the optional command line reset feature of First Run it also gives you a way to re-initialize damaged or missing files.

---

#### Export Groups

Using the ProPath Loader tool, you can create and manage export groups that define which files are distributed to specific locations.

Then you assign files into these groups and assign which export groups get distributed into the various locations you have defined in ProPath.

#### Export Rules

Different groups can have different export rules.  

This allows you to specify some files to be deployed once, others on startup every time the app runs, or others again if they do not exist at startup.

Having this level of flexibility makes First Deploy a very powerful feature for your application.

---

#### Deployment Containers

Simply put, "Deployment Containers" are the files that hold one or more of the files that you want to distribute at runtime on the user's PC.

These container files are distributed into the application directory by your installer or update program and often appear as regular DLLs.

ProPath comes with an easy to use application called the ProPathLoader that is installed as an .app file with the demo files.

Note that you don't distribute the ProPathLoader with your application.  

It is only used to manage and assemble the file sets and to export them into the file that gets distributed with your program and used at runtime as the distribution source.

--- 

First Deploy can be a real game changer for getting your program up and running in the production environment.

It is also useful when releasing new versions of your program that need to update or replace files in existing data locations.

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
