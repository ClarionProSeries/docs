
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send an Email from an External File

Using an external file for the message body is often easier than embedding the whole body directly in Clarion source.

It is a good fit when:

- the content is long
- the content is HTML
- the customer may want to maintain the text
- you want to use AI or an editor to help create the body

## Why this is attractive

An external file can be:

- easier to edit
- easier to test
- easier to replace without rebuilding the program

If the file is in the same folder, a simple filename may be enough. Otherwise, use a full path.

## Important for special characters

If the external file contains accented letters or other international characters, save the file as **UTF-8**.

That helps ensure those characters are sent correctly.

## Related page

If you want to personalize the file content before sending it, see:

- [Use TokenMerge with email templates](use-tokenmerge-with-email-templates.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)