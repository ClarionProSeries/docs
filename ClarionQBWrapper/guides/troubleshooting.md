---
title: "Troubleshooting"
summary: "Quick fixes and common problems when working with the QuickBooks Desktop API and this wrapper."
description: "Essential guidance to avoid common pitfalls, plus step by step fixes for issues you are likely to see during development."
keywords: ["Clarion", "QuickBooks", "QBXML", "troubleshooting", "iterators", "tag order", "case sensitive", "demo mode", "-1002", "-1003"]
page_type: "guide"
last_updated: "2025-11-01"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)

# Troubleshooting

This page has two parts. First, core practices that prevent most issues. Second, a list of common problems and how to resolve them.

---

## Essential guidance

### Use iterators when you expect more than 50 records
- Start with `iterator="Start"` and continue with `iterator="Continue"` in loops.  
- Even if you request a larger `MaxReturned`, QuickBooks may truncate unless you use iterators.  
- Check `iteratorRemainingCount` to know when to stop.

### Add tags in the correct order
- Tag order matters. Follow the sequence shown in the QBXML spec for each request type.  
- Incorrect order can fail silently or yield empty data.

### Case sensitivity
- The API is case sensitive for tag names, attributes, and some field values.  
- `<CustomerQueryRq>` is not the same as `<customerqueryrq>`.  
- For filters, `robert` will not match `Robert`.

### Demo mode limitations of the wrapper DLL
- Query results are limited to 5 records.  
- Iterators are blocked after the first batch.  
- Add, Modify, and Delete requests are blocked and return `-1002`.  
- Iterator continuations return `-1003`.

### Viewing XML
- Use the XML Viewer to see the formatted request and the validated, formatted response.  
- The summary panel shows request type, status code, severity, message, and RET count.  
- Buttons let you open the current tab in a browser or copy the XML to the clipboard.  
- See [Using the XML Viewer](using-the-xml-viewer.md).

---

## Common problems and fixes

### Nothing happens the first time the program runs
**Symptom:** The app appears to freeze on the first call to QuickBooks.  
**Cause:** QuickBooks is waiting for the user to authorize access.  
**Fix:**
- Check the Windows taskbar for the blinking QuickBooks icon.  
- Bring QuickBooks to the front.  
- In the authorization dialog, click the blue link to open the Intuit page, then type **YES**.  
- After approval, QuickBooks remembers the decision.  
- You can review permissions later in QuickBooks: Edit → Preferences → Integrated Applications → Company Preferences.

Related: [Application Authorization, App ID, and App Name](authorization-appid-appname.md)

---

### All requests return code -1002 or -1003
**Cause:** Demo mode.  
- `-1002` means write operations are blocked.  
- `-1003` means you attempted more than 5 records or an iterator continuation.  
**Fix:**  
- Enter a valid license key to unlock full functionality.  
- In demo mode, limit testing to small queries with 5 or fewer results.

Related: [Licensing and Demo Mode](licensing-and-demo-mode.md)

---

### ValidateResponse returns FALSE even though the XML looks fine
**Likely causes:**
- The request name passed to `QBParser.Init` does not match the request name used to build the XML.  
- The response contains an error block or is a different type than expected.
**Fix:**
- Ensure the names match exactly.

```clarion
! Build
QBWriter.Init('CustomerQuery')

! Parse
QBParser.Init('CustomerQuery', QBSessionMgr)

IF QBParser.ValidateResponse()
  ! OK
ELSE
  ! Not found or not valid
END
```

- Use the XML Viewer to confirm the `<...Rq>` you built and the `<...Rs>` you received.

Related: [Using the XML Viewer](using-the-xml-viewer.md)

---

### Nothing is returned from a query
**Possible causes:**
- Tag order is wrong or required fields are missing.  
- Filters are too narrow.  
- QuickBooks sometimes returns approximate matches for certain filters.
**Fix:**
- Start with broader filters, then narrow.  
- Apply strict matching in Clarion after parsing if needed.  
- Recheck tag order against the QBXML spec.

Related:  
- [QBXML Tips and Gotchas](qbxml-tips-and-gotchas.md)  
- SDK reference: https://developer.intuit.com/app/developer/qbdesktop/docs/api-reference/qbxml

---

### The app crashes or shows a .NET error when calling the DLL
**Cause:** The `ProSeriesQBWrapperV2.dll` is missing, not on the PATH, or does not match the LIB used at compile time.  
**Fix:**
- Place the DLL next to your EXE or ensure it is on the PATH.  
- Ship the correct DLL version that matches the LIB used to build the app.

---

### DebugView shows logs, but the app seems stuck
**Likely cause:** The app attempted a request that failed or is awaiting authorization.  
**Fix:**
- Check return codes from `BeginSession`, `ProcessRequest`, and `EndSession`.  
- Use `QBTools.ShowXMLViewer()` to review the formatted request and the validated response.  
- If necessary, re run the app and approve the authorization prompt in QuickBooks.

Related:  
- [Using DebugView](using-debugview.md)  
- [Application Authorization, App ID, and App Name](authorization-appid-appname.md)

---

## See also

- [Best Practices for the QuickBooks Desktop API](best-practices-quickbooks-desktop-api.md)  
- [QBXML Tips and Gotchas](qbxml-tips-and-gotchas.md)  
- [Using the Code Checker Console](using-the-code-checker-console.md)  
- [Hand Coding Quick Start](hand-coding-quick-start.md)

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)
