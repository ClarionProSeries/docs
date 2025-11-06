---
title: "Licensing and Demo Mode"
summary: "How licensing works, where to enter your key, and what demo mode restricts."
description: "Explains the wrapper’s per-developer licensing, how the key is passed to the DLL, how to verify activation, and demo mode restrictions."
keywords: ["Clarion", "QuickBooks", "license", "licensing", "demo mode", "activation", "error -1002", "error -1003"]
page_type: "guide"
last_updated: "2025-11-01"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)

# Licensing and Demo Mode

The wrapper includes a lightweight licensing system built into the C# DLL. Each developer receives a personal license key.

Example key format:

```
John Smith-1234567
```

---

## Where to enter the license

- Enter your key in the **ProSeriesQBWrapperGlobal** template prompts.  
- The key is stored in a global template symbol and passed automatically to the DLL at runtime.

You can also verify activation by inspecting any successful response in the XML Viewer or parser.

---

## License behavior

- If the key is valid, the DLL injects the developer name into the response XML as:
  ```
  <Developer>John Smith</Developer>
  ```
- If the key is invalid or missing, the wrapper runs in demo mode.

---

## Demo mode restrictions

- Queries are limited to 5 records, regardless of any `MaxReturned` value.  
- Data modification requests are blocked and return error code `-1002`  
  (for example, `CustomerAdd`, `ListDel`, and other mutations).  
- Iterator continuations are blocked and return error code `-1003`.

These limits apply until a valid key is provided.

---

## Licensing terms

- A license key is issued with each purchase of the wrapper.  
- The wrapper is licensed per developer, not per application.  
- Redistribution of the DLL or source code outside your license terms is prohibited.

---

## Related guides

- [Application Authorization, App ID, and App Name](authorization-appid-appname.md)  
- [Using the XML Viewer](using-the-xml-viewer.md)  
- [Troubleshooting](troubleshooting.md)

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)
