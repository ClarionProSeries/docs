
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Use TokenMerge with Email Templates

TokenMerge gives you a quick way to personalize text or HTML before you send it.

Yes, every Clarion developer can write a mail-merge style search-and-replace function.

But vuMailKit already includes one, so you do not have to reinvent it for every application.

## What TokenMerge gives you

The TokenMerge helpers can:

- replace a token inside a CSTRING and write the result to an output buffer
- replace tokens while copying a template file to a target file
- insert the full contents of one file into a token location in another file
- replace all matches or only the first match
- use case-sensitive matching or ignore-case matching

The recommended token style is something visible such as [[CustomerName]] or [[InvoiceBody]].

## In-memory token replacement

Use TokenMergeInString() when the source and replacement text are already in memory.

```clarion
Result      LONG
Template    CSTRING(1024)
MergedBody  CSTRING(2048)
TokenText   CSTRING(80)
ValueText   CSTRING(256)

Template  = 'Dear [[CustomerName]],<13,10><13,10>Your order is ready.'
MergedBody = ''
TokenText = '[[CustomerName]]'
ValueText = 'Charles'

Result = TokenMergeInString(Template, MergedBody, SIZE(MergedBody), |
                            TokenText, ValueText, 0)
IF Result < 0
  MESSAGE('Token merge failed: ' & Result)
END
```

The &lt;13,10&gt; values above are only used because this small sample builds a multi-line string in Clarion source. In a real program, the template text can come from a TEXT control, TPS memo, customer note, generated report, or external file that already contains normal line breaks.

## Replace tokens in an external file

Use TokenMergeInFile() when the template is in a text or HTML file and the replacement value is in a string.

### EmailTemplate.html

```html
<!doctype html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
  <p>Dear [[CustomerName]],</p>
  <p>Your appointment is scheduled for [[AppointmentDate]].</p>
</body>
</html>
```

### Clarion merge code

```clarion
Result       LONG
TemplateFile CSTRING(260)
MergedFile   CSTRING(260)
TokenText    CSTRING(80)
ValueText    CSTRING(256)

TemplateFile = CLIP(PATH()) & '\EmailTemplate.html'
MergedFile   = CLIP(PATH()) & '\EmailMerged.html'

TokenText = '[[CustomerName]]'
ValueText = 'Charles'
Result = TokenMergeInFile(TemplateFile, MergedFile, TokenText, ValueText, 0)

TokenText = '[[AppointmentDate]]'
ValueText = 'Friday, June 26'
Result = TokenMergeInFile(MergedFile, MergedFile, TokenText, ValueText, 0)
```

When you want to preserve the original template, write to a different merged output file and send the merged file.

```clarion
Body   = MergedFile
Attach = ''
Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
```

## Insert generated report text into an HTML template

One of the strongest uses for TokenMergeFileIntoFile() is inserting generated file content into an email template.

For example, a Clarion report can output invoice or statement detail to a text file. Then vuMailKit can insert that text file into a token such as [[InvoiceBody]] inside an HTML email template.

### InvoiceFrame.html

```html
<!doctype html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
  <p>Dear [[CustomerName]],</p>
  <p>Here is your invoice.</p>

  [[InvoiceBody]]

  <p>Thank you for your business.</p>
</body>
</html>
```

### InvoiceBody.txt

```text
Invoice #12345
Labor: $95.00
Parts: $12.50
Total: $107.50
```

### Clarion merge and send code

```clarion
Result          LONG
TemplateFile    CSTRING(260)
MergedFile      CSTRING(260)
InvoiceTextFile CSTRING(260)
TokenText       CSTRING(80)
CustomerName    CSTRING(80)

TemplateFile    = CLIP(PATH()) & '\InvoiceFrame.html'
MergedFile      = CLIP(PATH()) & '\InvoiceEmail.html'
InvoiceTextFile = CLIP(PATH()) & '\InvoiceBody.txt'

TokenText = '[[InvoiceBody]]'
Result = TokenMergeFileIntoFile(TemplateFile, MergedFile, TokenText, |
                                InvoiceTextFile, 0, 1)
IF Result < 0
  MESSAGE('Invoice body merge failed: ' & Result)
END

TokenText    = '[[CustomerName]]'
CustomerName = 'Charles'
Result = TokenMergeInFile(MergedFile, MergedFile, TokenText, CustomerName, 0)
IF Result < 0
  MESSAGE('Customer merge failed: ' & Result)
END

Body   = MergedFile
Attach = ''
Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END
```

The final 1 passed to TokenMergeFileIntoFile() tells vuMailKit to convert the replacement file line endings to HTML line breaks before inserting the plain text invoice body into the HTML template.

## Output buffer warning

For TokenMergeInString(), the output buffer must be large enough to hold the fully merged result.

If the output buffer is too small, the merged text will be truncated.

## TokenMergeFileIntoFile content flag reminder

When you use TokenMergeFileIntoFile() with an HTML template:

- use contentFlags = 1 if the replacement file is plain text and you want its line endings converted to HTML line breaks
- use contentFlags = 0 if the replacement file already contains HTML markup and should be inserted unchanged

If you use contentFlags = 0 with plain text, the text will still be inserted, but normal HTML rendering will collapse the plain line breaks as whitespace.

## Related reference pages

- [TokenMergeInString](../functions/TokenMergeInString.md)
- [TokenMergeInFile](../functions/TokenMergeInFile.md)
- [TokenMergeFileIntoFile](../functions/TokenMergeFileIntoFile.md)
- [Send a branded HTML email from a template](send-a-branded-html-email-from-a-template.md)
- [Send a form-letter invoice email with an optional personal message](send-a-form-letter-invoice-email-with-an-optional-personal-message.md)
- [Send an HTML email](send-an-html-email.md)
- [Send a Simple HTML email with a company logo](send-a-simple-html-email-with-a-company-logo.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)