
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send a Form-Letter Invoice Email with an Optional Personal Message

A very realistic use of vuMailKit is to send a branded email that looks like a company letter with invoice details below it.

The easiest way to do that is to separate the email into layers:

- a branded outer HTML frame
- fixed form-letter wording in the template
- simple token values such as customer name and service date
- an optional personal-message area
- a generated invoice body inserted from another file

This gives you a polished result without hard-coding the whole email inside Clarion.


A useful source for the generated invoice body is a normal Clarion report set to output text. Generate the invoice lines to a text file, merge that file into the email template, and send the merged output file as the email body.

## Example template

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

  <p>Please remit payment at your earliest convenience.</p>
  <p>Company Name<br>
  Address<br>
  Phone</p>
</body>
</html>
```

## How the pieces fit together

### Fixed template content

The outer template holds:

- logo and letterhead look
- standard wording
- footer and contact details

### Simple token replacement

Use normal token merge for values such as:

- `[[CustomerName]]`
- `[[ServiceDate]]`
- `[[PersonalMessage]]`

### File-content insertion

Use `TokenMergeFileIntoFile` when the invoice or statement body is already generated into another file.

That replacement file can be:

- plain text, optionally converted to `<br>` tags with `contentFlags = 1`
- an HTML fragment inserted unchanged with `contentFlags = 0`

It should normally **not** be a full second HTML document.

## Typical staged workflow

1. Start with the branded HTML template
2. Replace the simple tokens such as customer name and service date
3. Optionally replace `[[PersonalMessage]]` with a short custom note or with a blank string
4. Use `TokenMergeFileIntoFile` to replace `[[InvoiceBody]]` with the contents of the generated invoice file
5. Send the final merged file with [vuSendMail](../functions/vuSendMail.md) or [vuSendMailWait](../functions/vuSendMailWait.md)

## Example (Clarion)

```clarion
TemplateFile     CSTRING(260)
Stage1File       CSTRING(260)
Stage2File       CSTRING(260)
FinalFile        CSTRING(260)
ReplacementFile  CSTRING(260)
TokenText        CSTRING(80)
ValueText        CSTRING(1024)
Result           LONG

TemplateFile    = CLIP(PATH()) & '\InvoiceEmailFrame.html'
Stage1File      = CLIP(PATH()) & '\InvoiceStage1.html'
Stage2File      = CLIP(PATH()) & '\InvoiceStage2.html'
FinalFile       = CLIP(PATH()) & '\InvoiceFinal.html'
ReplacementFile = CLIP(PATH()) & '\InvoiceBody.txt'

TokenText = '[[CustomerName]]'
ValueText = 'Joe Blow'
Result = TokenMergeInFile(TemplateFile, Stage1File, TokenText, ValueText, 0)

TokenText = '[[ServiceDate]]'
ValueText = '2026-04-27'
Result = TokenMergeInFile(Stage1File, Stage2File, TokenText, ValueText, 0)

TokenText = '[[PersonalMessage]]'
ValueText = '<p>Please call if you have any questions about this invoice.</p>'
Result = TokenMergeInFile(Stage2File, FinalFile, TokenText, ValueText, 0)

TokenText = '[[InvoiceBody]]'
Result = TokenMergeFileIntoFile(FinalFile, FinalFile & '.tmp', TokenText, |
                            ReplacementFile, 0, 1)

! Use 1 for plain text invoice output.
! Use 0 if InvoiceBody.txt already contains HTML.

cBody = FinalFile & '.tmp'
Result = vuSendMailWait(cFrom, cTo, cCC, cBCC, cSubject, cBody, cAttach)
```

## Why this pattern is useful

This approach lets you change:

- branding without touching invoice generation
- form-letter wording without changing code
- invoice output without changing the outer template

That makes the workflow easier to maintain and easier to hand off to someone else later.

## Related reference pages

- [TokenMergeInFile](../functions/TokenMergeInFile.md)
- [TokenMergeFileIntoFile](../functions/TokenMergeFileIntoFile.md)
- [Send a branded HTML email from a template](send-a-branded-html-email-from-a-template.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)