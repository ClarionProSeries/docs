---
title: "Clarion QuickBooks Wrapper - What's New"
summary: "New features and enhancements introduced in Clarion QuickBooks Wrapper Version 1.4."
description: "Version 1.4 adds QBAI, an AI-friendly high-level class, a Code Checker Console, a QB force authorization template option, and new Markdown documentation."
keywords: ["Clarion", "ClarionQBWrapper", "What's New", "QBAI", "AI primer", "QuickBooks", "QBXML", "authorization", "documentation"]
page_type: "changelog"
last_updated: "2025-10-30"
---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)

# Clarion QuickBooks Wrapper - What's New in Version 1.4

Version 1.4 of **Clarion QuickBooks Wrapper** focuses on speed, simplicity, and reliability.  
This release introduces QBAI for simpler coding, AI-assisted development, a live Code Checker Console, a new QB force authorization feature, and all new Markdown documentation.

---

### QBAI high-level class

**QBAI** wraps the underlying base classes and exposes a simpler, high-level API.

- Avoids low-level QBXML details for common operations - you write less code. 
- Automatically handles communicating with QuickBooks so you can focus on the task at hand.
---

### AI primer workflow

If you want to leverage AI, simply load the **QBAI Primer** in the AI of your choice and describe the QuickBooks task you need.

- The AI generates Clarion code that uses the QBAI class, without requiring you to study the QuickBooks Desktop API website.
- You then check the generated code in real time with the new Code Checker Console.
- This reduces ramp-up time and shortens iteration cycles.
- Primer links for convenience:
  - Inline document page: [QBAI Primer](qbai-primer.md)
  - Link to how to use the primer: https://clarionproseries.com/ai/qbai-primer.html
  - Raw Primer text: https://clarionproseries.com/ai/qbai-primer.txt
  
---

### Code Checker Console

Validate requests before you commit changes to your app.

- This feature lets you test queries and requests interactively during development without recompiling and against your actual data and credentials.
- You confirm that everything works, then copy the working QBAI code into your project.

---

### Easier hand-coded workflows

QBAI also benefits developers who prefer to write code directly.

- You write less code that is easier to understand.
- The high-level class ensures a connection to QuickBooks is open and a session is started before calls run.  
- Provides a straightforward call path so you can concentrate on simply asking for what you need and reading the results.

---

### QB force authorization (template option)

A new **QB force authorization** option in the templates ensures the application is authorized the first time it connects.

- Prompts and guides the user to authorize the app inside QuickBooks.  
- Stores the completion in an INI so it is a one-time operation.  
- Prevents confusing failures caused by missing authorization.

---

### New documentation and GitHub publication

Version 1.4 ships with **all new Markdown documentation** suitable for both the website and CHM builds, produced with [ProHelp Studio](prohelpstudio.md).

- Online docs: https://clarionproseries.github.io/docs/ClarionQBWrapper/  
- Source repository: https://github.com/ClarionProSeries/docs/tree/main/ClarionQBWrapper

If the link above does not open in your help viewer, copy and paste this URL into your browser:
```
https://clarionproseries.github.io/docs/ClarionQBWrapper/
```

---

[Home](index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)
