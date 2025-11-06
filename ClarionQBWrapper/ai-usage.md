---
title: "Using AI with the Clarion QuickBooks Wrapper (QBAI)"
summary: "Give AI tools the correct context for generating Clarion code that uses QBAI."
description: "Loader-first workflow and links for using AI with the Clarion QuickBooks Wrapper."
keywords: ["QBAI", "ClarionQBWrapper", "Clarion", "QuickBooks", "AI", "loader", "primer"]
page_type: "guide"
last_updated: "2025-11-06"
---

[Home](../index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)

# Using AI with the Clarion QuickBooks Wrapper (QBAI)

> See also: **Loader (HTML):** [qbai-primer.html](https://clarionproseries.com/ai/qbai-primer.html)

This page explains how to give AI tools the correct context for generating Clarion code that uses QBAI.

## Best Practice

Provide the plain-text primer URL to the AI first:

```
https://clarionproseries.com/ai/qbai-primer.txt
```

Then issue your coding request, for example:

```
Write Clarion code using QBAI to send a CustomerQuery for Name and ListID, then call QBTools.ShowXMLViewer.
```

## Why use a plain-text URL

- Most AI tools reliably load and index small text files hosted on GitHub Pages or your site.
- This avoids token limits when pasting large content directly.
- It works in ChatGPT, Claude, Gemini, and Windows Copilot in our testing.

## Canonical Links

- Full primer (plain text): https://clarionproseries.com/ai/qbai-primer.txt
- Docs page: https://clarionproseries.github.io/docs/ClarionQBWrapper/qbai-primer/
- Product docs home: https://clarionproseries.github.io/docs/ClarionQBWrapper/

## Troubleshooting

- If the AI says it cannot fetch links, paste the small loader instead: https://clarionproseries.com/ai/qbai-primer-loader.txt
- If uploads are restricted, paste only the loader, then ask for the code.
- If results are inconsistent, remind the AI to follow QBAI.Init without the Rq suffix and to call QBTools.ShowXMLViewer to verify responses.

[Home](../index.md) | [Templates](templates/index.md) | [Classes](classes/index.md)
