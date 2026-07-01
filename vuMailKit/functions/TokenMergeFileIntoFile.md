---
title: "TokenMergeFileIntoFile"
summary: "Reads a source template file, replaces token text with the contents of another file, and writes the merged result to a target file."
description: "TokenMergeFileIntoFile reads a source template file, replaces token text with the contents of another file, and writes the merged result to a target file."
keywords: ["vuMailKit", "token merge", "mail merge", "TokenMergeFileIntoFile", "Clarion"]
function_name: "TokenMergeFileIntoFile"
category: "Template and Mail Merge"
version_added: "2026.04"
last_updated: "2026-04-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# TokenMergeFileIntoFile()

## Clarion prototype

**Prototype:** TokenMergeFileIntoFile(*CSTRING InSourceFile, *CSTRING InTargetFile, *CSTRING InToken, *CSTRING InReplacementFile, LONG InMergeFlags, LONG InContentFlags), SIGNED, PROC, PASCAL, RAW, NAME('TokenMergeFileIntoFile')

## Purpose
Reads a source template file, replaces token text with the full contents of another file, and writes the merged result to a target file.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InSourceFile | *CSTRING | Source text or HTML template file to read. |
| InTargetFile | *CSTRING | Target file to write. Must be different from InSourceFile so the template remains intact. |
| InToken | *CSTRING | Full token text to replace, such as [[MessageBody]]. |
| InReplacementFile | *CSTRING | File whose contents will be inserted where the token appears. |
| InMergeFlags | LONG | Merge option flags. 0=Replace all, case-sensitive, 1=First only, 2=Ignore case, 3=First only and ignore case. |
| InContentFlags | LONG | Replacement-content preparation flags. 0=Insert file contents exactly as read, 1=Convert replacement-file line endings to HTML &lt;br&gt; tags before insertion. Use 0 when the replacement file already contains HTML. Use 1 when the replacement file is plain text and you want its lines to render as separate lines inside HTML. |

## Return value / error codes
- Positive value: number of replacements performed.
- 0: No matching token was found. The target file is still written.
- -1: Token text is blank.
- -2: Source, target, or replacement file name is blank.
- -3: Source file not found.
- -4: Replacement file not found.
- -5: Read/write or runtime failure.
- -6: Source and target file must be different.

## Example files

### EmailFrame.html
```html
<!doctype html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
  <div style="text-align:center;">
    <img src="CompanyLogo.gif" alt="Company Logo">
  </div>

  <p>Dear [[CustomerName]],</p>

  <p>
    Here is your invoice for services performed on [[ServiceDate]].
    Thank you for your business.
  </p>

  [[PersonalMessage]]

  <hr>

  [[InvoiceBody]]

  <hr>

  <p>Company Name<br>
  Address<br>
  Phone</p>
</body>
</html>
```

### InvoiceBody.txt
```text
Invoice #12345
Service Date: 2026-04-27
Labor: $95.00
Parts: $12.50
Total: $107.50
```

## Example (Clarion)
```clarion
rc              LONG
templateFile    CSTRING(260)
mergedFile      CSTRING(260)
tokenText       CSTRING(80)
replacementFile CSTRING(260)
mergeFlags      LONG
contentFlags    LONG

templateFile    = CLIP(PATH()) & '\EmailFrame.html'
mergedFile      = CLIP(PATH()) & '\EmailMerged.html'
tokenText       = '[[InvoiceBody]]'
replacementFile = CLIP(PATH()) & '\InvoiceBody.txt'
mergeFlags      = 0   ! Replace all, case-sensitive
contentFlags    = 1   ! Convert replacement file line endings to <br>

rc = TokenMergeFileIntoFile(templateFile, mergedFile, tokenText, |
                            replacementFile, mergeFlags, contentFlags)
MESSAGE('TokenMergeFileIntoFile rc=' & rc)
```

## Notes
- Use TokenMergeInFile when the replacement value is already in a string.
- Use TokenMergeFileIntoFile when the replacement value should come from another file.
- For HTML email templates, the replacement file should normally contain plain text or an HTML fragment, not a full second HTML document.
- When InContentFlags = 1, line-ending conversion applies only to the replacement file content, not the outer template.
- Use InContentFlags = 0 when the replacement file already contains HTML markup such as &lt;p&gt;, &lt;br&gt;, tables, or other HTML fragments.
- Use InContentFlags = 1 when the replacement file is plain text and you want normal text-file line endings to render as visible HTML line breaks.
- This helper is useful for HTML email templates, invoices, statements, letterhead-style email, and generated Clarion report or body output.
- External UTF-8 HTML templates are recommended because they avoid hard-coding long HTML strings in Clarion and avoid doubling every < character in Clarion source.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
