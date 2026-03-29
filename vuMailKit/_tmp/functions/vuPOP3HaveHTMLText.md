
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3HaveHTMLText()

```Prototype
vuPOP3HaveHTMLText(),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3HaveHTMLText')
```

## Purpose
Checks the currently loaded POP3 message and reports whether an HTML MIME body is available.

## Parameters
This function has no parameters.

## Return value / error codes
- `1`: HTML body content is present.
- `0`: HTML body content is not present.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3HaveHTMLText(),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3HaveHTMLText')
  END
END

hasHtml LONG

hasHtml = vuPOP3HaveHTMLText()
IF hasHtml = 1
  MESSAGE('HTML body is available.')
END
```

## Notes
- Load a full message with `vuPOP3LoadEmail` before checking MIME body availability.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)