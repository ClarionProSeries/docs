---
title: "Using the Code Checker Console"
summary: "Paste AI generated code, validate it against QuickBooks, and inspect request and response XML with status details."
description: "How to use the Code Checker Console to format, validate, and iterate on AI generated or hand written QBAIClass code before adding it to your app."
keywords: ["Clarion", "QuickBooks", "QBXML", "QBAI", "code checker", "validate", "iterations", "clipboard", "browser"]
page_type: "guide"
last_updated: "2025-11-01"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)

# Using the Code Checker Console

The Code Checker Console lets you paste AI generated code or type your own, validate it, and review the resulting request and response XML without touching your project or recompiling. It is the fastest way to confirm that your QBAIClass calls build the XML you expect and that the response contains the fields you need.

---

## Layout and tabs

The window has three tabs:

- **AI Generated Code**  
  A text box where you paste code from your clipboard or type it directly. The **Paste and Format** button can import from the clipboard and apply basic formatting for readability.

- **Request XML**  
  Shows the QBXML that will be sent to QuickBooks when you click **Validate**. After validation this tab holds the final formatted request.

- **Response XML**  
  Shows the formatted response block returned by QuickBooks after validation and parsing. This is the same pretty printed style used by the XML Viewer.

> Note: Screen captures are not included. Click **Open tab content in browser** to view XML with collapsible nodes in your default browser.

---

## Response summary panel

Below the tabs is a summary area titled **API response after ProcessRequest completed**. After validation it automatically shows:

- API request type  
- Status code  
- Status severity  
- Status message  
- RET count  
- **Record count** and **Record total**

The last two help you confirm that iterations are working. For example, if 150 records are returned in pages of 50:

- First pass: record count = 50, record total = 50  
- Second pass: record count = 50, record total = 100  
- Third pass: record count = 50, record total = 150

---

## Button groups

### AI generated code

- **Paste and Format**  
  Pulls text from the clipboard into the Code tab and formats it for easier reading.

- **Validate**  
  Executes the code in the sandboxed context used by the console, builds the request, sends it to QuickBooks, receives the response, parses and formats it, then updates the Request XML and Response XML tabs and the summary panel.

- **Clear**  
  Clears all three tabs so you can try a new variation without closing the window.

### Request and Response tab actions

- **Open tab content in browser**  
  Opens the current tab’s XML in your default browser so you can expand and collapse nodes for quick inspection.

- **Copy tab content to clipboard**  
  Copies the current tab’s XML to the clipboard. Handy for notes and for sending XML to support.

---

## Typical workflow

1. Build or paste code that uses `QBAIClass` to set up a request.  
2. Click **Paste and Format** if you pasted from the clipboard.  
3. Click **Validate**.  
4. Review **Request XML** to confirm the tags and attributes are what you intended.  
5. Review **Response XML** to see the parsed and formatted block.  
6. Check the summary panel for status values and the RET count.  
7. If you are testing iterator logic, run your next pass and confirm **record count** and **record total** advance as expected.  
8. Use **Open tab content in browser** or **Copy tab content to clipboard** if you need a deeper look or want to share results.

---

## Tips for best results

- Start with a small, focused request such as `CompanyQuery` or `CustomerQuery` with a few `IncludeRetElement` lines.  
- Confirm that your **AppID**, **AppName**, **FileMode**, and **ConnectionType** are correct before validating.  
- If validation fails, read the **status code**, **severity**, and **message** in the summary panel before changing code.  
- For iterator tests, log the pass number and compare **record total** after each pass.  
- Use the **QBAI Primer** as a starting point. The primer page includes ready to copy snippets that you can paste directly into the Code tab and validate against the standard QuickBooks sample company.  
  - Loader page: https://clarionproseries.com/ai/qbai-primer.html  
  - Primer text used with AI: https://clarionproseries.com/ai/qbai-primer.txt

---

## Related guides

- [Before You Start Coding](before-you-start-coding.md)  
- [Using the XML Viewer](using-the-xml-viewer.md)  
- [Application Authorization, App ID, and App Name](authorization-appid-appname.md)  
- [Hand Coding Quick Start](hand-coding-quick-start.md)  
- [Troubleshooting](troubleshooting.md)

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)
