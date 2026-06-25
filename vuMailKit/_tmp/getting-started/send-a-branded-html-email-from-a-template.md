
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send a Branded HTML Email from a Template

One of the easiest ways to send a polished HTML email is to keep a reusable outer template file and merge your changing content into it.

This works especially well when you want to include:

- a company logo
- a simple letterhead area
- a standard footer
- a branded contact block
- a body section that changes from one message to the next


If all you need is a clean wrapper with optional header and footer images, start with [Simple HTML mode](send-a-simple-html-email-with-a-company-logo.md). Use this external-template approach when you want more control over the whole HTML frame.

With this approach, you leave the original template file untouched and write the merged result to a separate output file.

## Why this approach works so well

This pattern gives you a clean separation between:

- the reusable branded frame
- the changing message content
- the final merged file that gets sent

That means you do not have to hand-build the whole HTML email inside Clarion, and you do not have to overwrite your master template every time you send a message.

## Typical workflow

A practical branded-template workflow looks like this:

1. Create an external HTML template file
2. Put a token such as `[[MessageBody]]` where the changing content should go
3. Keep your logo, footer, and company information in the template
4. Build the changing body content in Clarion or in another external file
5. Use `TokenMergeInFile` or `TokenMergeFileIntoFile` to write a merged output file
6. Send the merged output file with [vuSendMail](../functions/vuSendMail.md) or [vuSendMailWait](../functions/vuSendMailWait.md)

Yes, every developer can write a mail-merge style search-and-replace function.

But vuMailKit already includes TokenMerge helpers, so you do not have to reinvent that plumbing in every application.

Another practical version of this pattern is to have a Clarion report write invoice or statement lines to a text file, then use `TokenMergeFileIntoFile` to place those generated lines into the email body before sending the merged output file.

## Example template file

Save the template as an external UTF-8 HTML file.

```html
<!doctype html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
  <div style="text-align:center;">
    <img src="vuMailKit270x90.gif" alt="Company Logo">
  </div>

  <hr>

  <div>
    [[MessageBody]]
  </div>

  <hr>

  <p>LANSRAD<br>
  Tennessee<br>
  555-111-2222</p>
</body>
</html>
```

## Clarion-side merge examples

### Replace a token with a string value

```clarion
templatefile = 'HTMLFrame.txt'
mergedfile   = 'EmailTarget.txt'

tokenText = '[[MessageBody]]'
valueText = '<p>Hello!</p><p>This message was created inside Clarion.</p>'
flags     = 0

Result = TokenMergeInFile(templatefile, mergedfile, tokenText, valueText, flags)

cBody = mergedfile
```

### Replace a token with the contents of another file

```clarion
templatefile    = 'HTMLFrame.txt'
mergedfile      = 'EmailTarget.txt'
replacementfile = 'MessageBody.txt'

tokenText    = '[[MessageBody]]'
mergeFlags   = 0
contentFlags = 1   ! Use 1 for plain text. Use 0 if MessageBody.txt already contains HTML.

Result = TokenMergeFileIntoFile(templatefile, mergedfile, tokenText, |
                            replacementfile, mergeFlags, contentFlags)

cBody = mergedfile
```

## Important notes

### Save the template as UTF-8

If the external HTML file contains accented letters or other international characters, save it as **UTF-8**.

That is the safest way to preserve special characters correctly.

### The merged file is separate from the template

Your template file stays unchanged. The merged file is the throwaway working copy that gets sent.

That makes it easy to reuse the same branded frame over and over.

### The inserted content should match the outer template

If your outer file is HTML, the inserted content should normally be either plain text or an HTML fragment, not a full second HTML document.

When the replacement content is plain text, `TokenMergeFileIntoFile` can optionally convert normal line endings to `<br>` tags before insertion.

Use `contentFlags = 1` when the replacement file is plain text. Use `contentFlags = 0` when the replacement file already contains HTML markup.

### Embedded images require HTML email

If you want the logo to appear in the message body, the email must be sent as HTML.

This branded-template workflow is a very good fit for that.

## Why many developers will prefer this over inline HTML

You can build HTML directly inside Clarion if you want, but this external-template approach is often easier because:

- the template is easier to edit
- the template can be created with an HTML editor or AI
- you do not need doubled `<` signs in the template file itself
- the brand frame is reusable
- the changing content can stay simple

## Related pages

- [Send an HTML email](send-an-html-email.md)
- [Use TokenMerge with email templates](use-tokenmerge-with-email-templates.md)
- [Send a form-letter invoice email with an optional personal message](send-a-form-letter-invoice-email-with-an-optional-personal-message.md)
- [Send an embedded image](send-an-embedded-image.md)
- [TokenMergeInFile](../functions/TokenMergeInFile.md)
- [TokenMergeFileIntoFile](../functions/TokenMergeFileIntoFile.md)

## Related page

- [Send a Simple HTML Email with a Company Logo](send-a-simple-html-email-with-a-company-logo.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)