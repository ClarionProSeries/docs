
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetSimpleHTMLNormalizeBody()

## Clarion prototype

**Prototype:** vuSetSimpleHTMLNormalizeBody(LONG InState), SIGNED, PROC, PASCAL, RAW, NAME('vuSetSimpleHTMLNormalizeBody')

Controls how the center body content is prepared when Simple HTML mode is active.

## Parameters

| Name | Description |
|---|---|
| InState | 0 inserts the body as an HTML fragment exactly as supplied. Any non-zero value treats the body as ordinary text, normalizes line endings, converts them into HTML-friendly breaks, and safely escapes HTML-sensitive characters. |

## Example (Clarion)
```clarion
rc LONG

! Use ordinary text in the email body and let vuMailKit make it HTML-safe.
rc = vuSetSimpleHTMLNormalizeBody(1)

! Use this instead when cBody already contains an HTML fragment.
! rc = vuSetSimpleHTMLNormalizeBody(0)
```

## Notes

- The default after [vuResetSimpleHTML](vuResetSimpleHTML.md) is on.
- Use `TRUE` when the body is ordinary text.
- Use `FALSE` when the body is already an HTML fragment and should be inserted as-is.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)