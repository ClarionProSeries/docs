
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3HaveEmbedded()

## Clarion prototype

**Prototype:** vuPOP3HaveEmbedded(), LONG, PROC, PASCAL, RAW, NAME('vuPOP3HaveEmbedded')

## Purpose
Checks the currently loaded POP3 message and reports whether embedded (inline) MIME parts are present.

## Parameters
This function has no parameters.

## Return value / error codes
| Value | Meaning |
|---|---|
| 1 | Embedded content is present. |
| 0 | No embedded content is present. |

## Example (Clarion)
```clarion
hasEmbedded LONG

hasEmbedded = vuPOP3HaveEmbedded()
IF hasEmbedded = 1
  MESSAGE('Embedded content found.')
END
```

## Notes
- Load a full message with `vuPOP3LoadEmail` before querying embedded-part state.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)