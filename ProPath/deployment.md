---
title: "Clarion ProPath - Deployment"
summary: "Clarion ProPath requires no runtime DLL. All functionality is compiled directly into your application for simple, self-contained deployment."
description: "Clarion ProPath requires no runtime DLL. All folder and dataset management features are built directly into your Clarion application, simplifying deployment and eliminating external dependencies."
keywords: ["ProPath", "Clarion", "deployment", "dataset", "folders", "installation", "distribution"]
page_type: "guide"
last_updated: "2025-10-06"
---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)

# Clarion ProPath - Deployment

One of the key advantages of **ProPath** is that it does not require any runtime DLLs or external dependencies.  

All logic for folder management, dataset handling, and INI file control is compiled directly into your Clarion application.

This means that deployment is as simple as distributing your application's executable and data files, with no additional runtime components required.

---

## Deployment Overview

ProPath integrates entirely at compile time through its template and class system.  
Once added to your application, all dataset and folder management routines become part of your compiled program.

### Key Benefits

- **No runtime DLLs** means nothing extra to install or register.  
- **Self-contained deployment** keeps all ProPath logic within your EXE.  
- **Portable-ready** works from USB drives or standard Windows installations.  
- **Simplified updates** since replacing your EXE automatically updates ProPath functionality.  

### Important Note About First Deploy

The only exception to ProPath's no-DLL rule is when you use the **First Deploy** feature.  
In that case, the **ProPath Loader** application can bundle the files you wish to deploy into a single container file that is typically named with a `.DLL` extension.  

This container is not an executable library but a data file that ProPath's First Deploy logic reads at runtime to extract and place the contained files into their proper locations.  

If your application uses First Deploy, you must distribute this container file alongside your executable so that ProPath can access the deployment contents when the program runs.

---

## Typical Deployment Steps

1. Build your Clarion application with the **ProPath Global Extension** enabled.  
2. Verify that your dataset and INI paths are configured in the template or through your classes.  
3. Create your installer or distribute your EXE as usual.  
4. Include any required data files, seed databases, or configuration files in your installation package.  
5. If using **First Deploy**, include the generated container file (the `.DLL` data file) in the same folder as your EXE.  

ProPath will automatically create or validate required folders and configuration files the first time the application runs.

---

## Important Deployment Considerations

When deploying your application, be aware of Windows **data virtualization** and **UAC elevation** behavior.  

Running your program directly from an elevated installer can cause configuration or INI files to be written under the Administrator's profile instead of the end user's profile.

To understand these issues and how ProPath prevents them, see  
[Why Use ProPath](concepts/why-use-propath.md).  

That section explains how Windows redirects writes to protected areas and how tools like **SetupBuilder** can launch your program non-elevated to avoid these common deployment problems.

---

## Multi-User and Network Environments

ProPath fully supports deployment to shared or network environments.  
For example, you can install the EXE and data folders on a network share, allowing multiple workstations to access shared data while keeping user-specific INI files stored locally.

When using multi-dataset configurations, each workstation can automatically initialize its own dataset or reference a shared one, depending on your configuration.

---

## Example Applications

The included demo applications demonstrate ProPath deployment in several real-world scenarios, including:

- Local single-user installations  
- Multi-dataset configurations  
- Network-shared data folders  
- Portable or USB-based use  

See the [Demo Applications](Demos/index.md) page for step-by-step examples.

---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)
