---
title: "Login Integration"
description: "Describes how ProPath integrates with login procedures such as SecWin, Keepsoft, or custom authentication systems."
keywords: ["ProPath", "Clarion", "login", "SecWin", "Keepsoft", "authentication"]
page_type: "concepts"
last_updated: "2025-10-06"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)

[![ProPath logo](../assets/images/ProPath270x90.png)](https://www.clarionproseries.com/html/propath.html)

# Login Integration

ProPath can call a login procedure **after dataset paths are set** but **before** allowing a user to select another database or dataset.  

This supports multiple authentication systems including:

- **CapeSoft's SecWin**  
- **Your Custom Login Procedure**

By integrating at this stage, ProPath ensures authentication and user-level access are resolved before data files are opened.

This approach supports single-login workflows and consistent user initialization.

Developers can use this event to load user-specific configuration files, apply access restrictions, or modify dataset visibility based on login credentials.

---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md)
