---
title: "Best Practices for the QuickBooks Desktop API"
summary: "Real world guidance for building reliable integrations with this wrapper."
description: "Usage strategies, common API quirks, and links for deeper exploration when working with the QuickBooks Desktop API."
keywords: ["Clarion", "QuickBooks", "QBXML", "best practices", "iterators", "MaxReturned", "case sensitive", "editsequence", "dates"]
page_type: "guide"
last_updated: "2025-11-01"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)

# Best Practices for the QuickBooks Desktop API

This guide provides practical guidance to help you build robust integrations with the QuickBooks Desktop API using this wrapper. It covers usage strategies, API quirks, and references for deeper reading.

---

## Use iterators when you expect more than 50 records

- Use `iterator="Start"` and then `iterator="Continue"` with `MaxReturned=50` for large result sets.  
- After each pass, check `iteratorRemainingCount` to decide whether another request is needed.  
- Track progress with the **record count** and **record total** fields in the Code Checker Console.

NOTE: The demo app and the QBAI Primer both have examples of using iterators.

---

## Tag order matters

QuickBooks requires tags in the exact order defined by its DTDs. Incorrect order can fail silently or be rejected.

Find the correct order in the SDK reference:  
https://developer.intuit.com/app/developer/qbdesktop/docs/api-reference/qbxml

Follow the structure shown for your request type, for example `CustomerAddRq`.

---

## Match the request name to the expected response

When initializing the parser, pass the correct root name for the response you are parsing. Using the wrong name causes `ValidateResponse()` to fail.

```clarion
! Expecting <CustomerQueryRs> in the response
QBParser.Init('CustomerQuery', QBSessionMgr)
```

---

## Understand demo mode limitations

Without a valid license key, the DLL runs in demo mode:

- Only query requests are permitted  
- Only the first 5 records are returned  
- Iterator continuations are blocked  
- Modify or delete requests return error `-1002`

Use demo mode to learn and to test request construction. For full functionality, obtain a licensed wrapper and a QuickBooks developer copy.

---

## Treat QuickBooks as case sensitive

Tag names must match the spec exactly.

- Correct: `ListID`  
- Incorrect: `listid`, `Listid`, `LISTID`

Filter values can be case sensitive as well. Searching for `robert` will not match `Robert`.

Best practice: copy tag names directly from the QBXML reference to avoid subtle bugs.

Reference:  
https://developer.intuit.com/app/developer/qbdesktop/docs/api-reference/qbdesktop

---

## Use ISO formatted dates and times

Use `YYYY-MM-DD` or `YYYY-MM-DDThh:mm:ss-05:00` formats.  
Prefer the helpers on `QBXMLTools`, such as:

```
Tools.BuildXMLDateTimeFromClarion(Date, Time)
```

---

## Always requery before modify or delete

Before sending `CustomerMod`, `ListDel`, or any mutation:

- Retrieve the current `ListID`  
- Retrieve the current `EditSequence` for modify operations

Do not hardcode these values. Requery to avoid edit conflicts.

---

## Limit payload with IncludeRetElement

Use `IncludeRetElement` to request only the fields you need. Smaller responses are faster to parse and easier to validate.

---

## Add one tag per call

Add each element with its own `RequestAddTag()`.  
For nested structures, use `RequestOpenTag()` and `RequestCloseTag()` to group child elements clearly.

---

## Avoid colons in names

The colon character is reserved for XML namespaces. QuickBooks does not support namespaced XML.

- Do not create tags like `Customer:Name`.  
- Use `CustomerName` or `Name` instead.  
- The wrapper does not auto correct invalid names.

---

## Helpful links and tools

QuickBooks SDK reference:  
https://developer.intuit.com/app/developer/qbdesktop/docs/api-reference/qbdesktop

Intuit developer account and tools:  
https://developer.intuit.com

Free developer copy of QuickBooks (NFR) via the Intuit Developer Advantage Program (IDAP):  
https://developer.intuit.com/app/developer/qbdesktop/docs/get-started#quickbooks-desktop-developer-license

---

## Related guides

- [QBXML Tips and Gotchas](qbxml-tips-and-gotchas.md)  
- [Before You Start Coding](before-you-start-coding.md)  
- [Hand Coding Quick Start](hand-coding-quick-start.md)  
- [Using the Code Checker Console](using-the-code-checker-console.md)  
- [Using the XML Viewer](using-the-xml-viewer.md)

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)
