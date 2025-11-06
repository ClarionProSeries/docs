---
title: "Using the XML Viewer"
summary: "Inspect your request and the validated, formatted response XML."
description: "How to open the built in XML Viewer, what each tab shows, why ValidateResponse is required, and how to use the summary panel and actions."
keywords: ["Clarion", "QuickBooks", "QBXML", "XML Viewer", "debugging", "ValidateResponse", "ShowXMLViewer", "status code", "clipboard"]
page_type: "guide"
last_updated: "2025-11-01"
---

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)

# Using the XML Viewer

The wrapper includes a tool for debugging and inspection: `QBTools.ShowXMLViewer()`.

The viewer has two tabs:
- **Request XML**  
  Shows the exact QBXML you sent, formatted for readability.
- **Response XML**  
  Shows the validated response block, parsed and formatted. This requires a call to `QBParser.ValidateResponse()` first.

Note: The viewer does not display raw, one line QBXML. It always pretty prints for readability. The Response XML tab is only meaningful after validation.

---

## Response summary panel

Below the tabbed XML area there is a summary section titled **API response after ProcessRequest completed**.  
When a response has been validated, this section automatically extracts and shows:

- API request type  
- Status code  
- Status severity  
- Status message  
- RET count

This saves you from digging through the XML to find these values.

---

## Actions under the viewer

Two buttons appear under the summary panel. They operate on the currently selected tab.

- **Open XML in Browser**  
  Opens the selected XML in your default browser. Most browsers render XML with a disclosure tree so you can expand and collapse nodes, scan nested elements, and inspect individual records easily.

- **Copy XML to Clipboard**  
  Copies the selected XML to the clipboard. This is useful for pasting into your notes, saving test artifacts, or sending XML to support.

---

## Why validation is required

QuickBooks returns one long string without line breaks. `QBParser.ValidateResponse()` finds the correct `<...Rs>` block in that string and prepares it for display. Without validation, there is no specific response block to format, so the Response XML tab and the response summary values will not be populated.

---

## Typical usage

Call the viewer after a successful request, then validate so the Response XML tab and summary panel are populated.

```clarion
! Build the XML request
QBWriter.Init('CustomerQuery')
QBWriter.RequestAddTag('IncludeRetElement', 'Name')
QBWriter.RequestAddTag('IncludeRetElement', 'ListID')
QBWriter.RequestClose()

! Send the request and get the response
ResultCode = QBSessionMgr.ProcessRequest()
IF ResultCode <> 0
  MESSAGE('Request failed. Code: ' & ResultCode, 'Error', ICON:Exclamation)
  RETURN
END

! Initialize the parser and validate the response block
QBParser.Init('CustomerQuery', QBSessionMgr)

IF QBParser.ValidateResponse()
  QBTools.ShowXMLViewer()   ! Request XML, formatted Response XML, and summary panel will be available
ELSE
  MESSAGE('Response block not found or failed validation.', 'Error', ICON:Exclamation)
END
```

---

## Quick peek at the request

If you only want to review the request you built, you can open the viewer at any time after forming the request. The Response XML tab and summary panel will not be populated until validation succeeds.

```clarion
QBTools.ShowXMLViewer()
```

---

## Related guides

- [Hand Coding Quick Start](hand-coding-quick-start.md)  
- [Using the Code Checker Console](using-the-code-checker-console.md)  
- [Troubleshooting](troubleshooting.md)

[Home](../index.md) | [Templates](../templates/index.md) | [Classes](../classes/index.md) | [Guides](index.md)
