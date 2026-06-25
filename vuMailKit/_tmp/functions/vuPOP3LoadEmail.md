
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3LoadEmail()

## Clarion prototype

**Prototype:** vuPOP3LoadEmail(LONG InMessageNumber), LONG, PROC, PASCAL, RAW, NAME('vuPOP3LoadEmail')

## Purpose
Retrieves and parses one full POP3 message so body, attachment, and embedded-content APIs can be used.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InMessageNumber | LONG | 1-based POP3 message number to load. |

## Return value / error codes
| Value | Meaning |
|---|---|
| 0 | Message loaded successfully. |
- `< 0`: POP3 command, message index, or parse/state failure.

## Example (Clarion)
```clarion
rc    LONG
msgNo LONG

msgNo = 1
rc = vuPOP3LoadEmail(msgNo)
IF rc < 0
  MESSAGE('vuPOP3LoadEmail failed: ' & rc)
END
```

## Notes
- Call `vuPOP3Connect` first.
- Use `vuPOP3LoadHeader` when only headers are required.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)