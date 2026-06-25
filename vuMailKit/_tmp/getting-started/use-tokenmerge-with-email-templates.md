
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

The recommended token style is something visible such as `[[CustomerName]]` or `[[InvoiceBody]]`.

## Typical workflow

A common pattern is:

1. Create a text or HTML template.
2. Put tokens in it such as `[[FirstName]]` and `[[Code]]`.
3. Use TokenMerge to replace those tokens.
4. Send the finished result with vuMailKit.

This works well for plain text or HTML, whether the source started in a file or in memory.

## Generated report or invoice content

One of the strongest uses for `TokenMergeFileIntoFile` is inserting generated file content into an email template.

For example, a Clarion report can output invoice or statement detail to a text file. Then vuMailKit can insert that text file into a token such as `[[InvoiceBody]]` inside an HTML email template.

That lets you send the invoice content inside the email body instead of always sending it as a PDF attachment.

A typical flow is:

1. Generate invoice or statement lines to a text file.
2. Start with an HTML email template containing `[[InvoiceBody]]`.
3. Use `TokenMergeFileIntoFile` to insert the generated text file.
4. Send the merged output file with [vuSendMail](../functions/vuSendMail.md) or [vuSendMailWait](../functions/vuSendMailWait.md).

When the generated file is plain text and the target is HTML, use `contentFlags = 1` so normal text-file line endings are converted to HTML line breaks.

## Output buffer warning

For `TokenMergeInString`, the output buffer must be large enough to hold the fully merged result.

If the output buffer is too small, the merged text will be truncated.

## Why it fits vuMailKit so well

This is especially useful when the email body lives in an external file.

That lets you:

- write the email in an editor
- ask AI to help draft the body
- keep the content outside your Clarion source
- personalize the final result just before send
- reuse the same template for many customers

## TokenMergeFileIntoFile content flag reminder

When you use `TokenMergeFileIntoFile` with an HTML template:

- use `contentFlags = 1` if the replacement file is plain text and you want its line endings converted to HTML line breaks
- use `contentFlags = 0` if the replacement file already contains HTML markup and should be inserted unchanged

If you use `contentFlags = 0` with plain text, the text will still be inserted, but normal HTML rendering will collapse the plain line breaks as whitespace.

## Related reference pages

- [TokenMergeInString](../functions/TokenMergeInString.md)
- [TokenMergeInFile](../functions/TokenMergeInFile.md)
- [TokenMergeFileIntoFile](../functions/TokenMergeFileIntoFile.md)
- [Send a branded HTML email from a template](send-a-branded-html-email-from-a-template.md)
- [Send a form-letter invoice email with an optional personal message](send-a-form-letter-invoice-email-with-an-optional-personal-message.md)
- [Send an HTML email](send-an-html-email.md)
- [Send a Simple HTML email with a company logo](send-a-simple-html-email-with-a-company-logo.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)