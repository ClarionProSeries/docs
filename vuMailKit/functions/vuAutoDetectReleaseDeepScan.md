---
title: "vuAutoDetectReleaseDeepScan"
function_name: "vuAutoDetectReleaseDeepScan"
last_updated: "2026-03-22"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuAutoDetectReleaseDeepScan

## Clarion prototype

**Prototype:** vuAutoDetectReleaseDeepScan(LONG InHandle), SIGNED, PROC, PASCAL, RAW, NAME('vuAutoDetectReleaseDeepScan')

Releases the stored state for an asynchronous deep autodetect job after completion or cancel.

## Example (Clarion)
```clarion
rc     LONG
handle LONG

handle = 1   ! Use the handle returned by vuAutoDetectStartDeepScan.
rc = vuAutoDetectReleaseDeepScan(handle)

IF rc = 0
  MESSAGE('Deep scan handle was not released: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
