
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3SaveEmbeddedOne(Index)

```Prototype
vuPOP3SaveEmbeddedOne(LONG), LONG
```

## Purpose
Saves one embedded inline content item from the currently loaded POP3 message by 1-based index.

Use this when you are iterating through embedded parts numerically instead of searching by filename.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Index | LONG | 1-based embedded content index. |

## Return value / error codes
- `1`: Embedded content item saved successfully.
- `0`: Invalid index, no loaded message, item not found, or save failure.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3SaveEmbeddedOne(LONG),LONG,PASCAL,RAW,NAME('vuPOP3SaveEmbeddedOne')
  END
END

rc    LONG
index LONG

index = 1
rc = vuPOP3SaveEmbeddedOne(index)
IF rc = 0
  MESSAGE('Embedded content save failed for index ' & index)
END
```

## Notes
- Call `vuPOP3LoadEmail()` before saving embedded content.
- Output folder comes from the POP3 folder setting.
- This function is often paired with loops that also call `vuPOP3EmbeddedName()` or `vuPOP3EmbeddedCID()` for inspection.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)