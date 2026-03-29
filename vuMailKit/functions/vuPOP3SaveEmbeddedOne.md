---
title: "vuPOP3SaveEmbeddedOne"
summary: "Saves one embedded content item by 1-based index from the loaded POP3 message."
description: "Saves one embedded content item by 1-based index from the loaded POP3 message. [Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)"
keywords: ["vuMailKit", "POP3", "vuPOP3SaveEmbeddedOne"]
function_name: "vuPOP3SaveEmbeddedOne"
category: "POP3 and Receiving"
version_added: "Legacy"
last_updated: "2026-03-27"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuPOP3SaveEmbeddedOne()

```Prototype
vuPOP3SaveEmbeddedOne(LONG Index),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3SaveEmbeddedOne')
```

## Purpose
Saves one embedded (inline) content item from the currently loaded POP3 message by index.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| Index | LONG | 1-based embedded content index. |

## Return value / error codes
- `1`: Embedded content item saved successfully.
- `0`: Invalid index, item not found, or save failed.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuPOP3SaveEmbeddedOne(LONG Index),SIGNED,PROC,PASCAL,RAW,NAME('vuPOP3SaveEmbeddedOne')
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
- Call `vuPOP3LoadEmail` before saving embedded content.
- Output folder comes from `vuPOP3SetFolder` / POP3 folder configuration.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)