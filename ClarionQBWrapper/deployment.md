---
title: "Clarion QuickBooks Wrapper - Deployment and Usage"
summary: "Deploy the runtime DLL with your Clarion application so the QuickBooks API calls work at runtime."
description: "The Clarion QuickBooks Wrapper links to a LIB at build time and requires a single DLL at runtime. Place the DLL next to your EXE or in a folder on the system PATH."
keywords: ["ClarionQBWrapper", "deployment", "QuickBooks", "QBXML", "Clarion", "DLL", "runtime"]
page_type: "guide"
last_updated: "2025-10-31"
---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)

# Clarion QuickBooks Wrapper - Deployment

The **Clarion QuickBooks Wrapper** includes a single runtime DLL used by your application to communicate with QuickBooks Desktop.

## Deployment

Include this file with your application:

- **ProSeriesQBWrapperV2.dll**

Place the DLL in one of these locations:

- In the same folder as your EXE  
- Or in a folder on the system **PATH**

Build time note:

- Your project links against **ProSeriesQBWrapperV2.lib** during compilation. The LIB is not required on end user machines.


---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)
