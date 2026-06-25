
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3LoadHeader()

## Clarion prototype

**Prototype:** vuPOP3LoadHeader(LONG InMessageNumber), LONG, PROC, PASCAL, RAW, NAME('vuPOP3LoadHeader')

## Purpose
Retrieves and parses only message headers for one POP3 message.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InMessageNumber | LONG | 1-based POP3 message number to load. |

## Return value / error codes
| Value | Meaning |
|---|---|
| 0 | Headers loaded successfully. |
- `< 0`: POP3 command, message index, or parse/state failure.

## Example (Clarion)
```clarion
rc    LONG
msgNo LONG

msgNo = 1
rc = vuPOP3LoadHeader(msgNo)
IF rc < 0
  MESSAGE('vuPOP3LoadHeader failed: ' & rc)
END
```

## Notes
- Call `vuPOP3Connect` first.
- For MIME body and attachment parsing, use `vuPOP3LoadEmail` instead.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)