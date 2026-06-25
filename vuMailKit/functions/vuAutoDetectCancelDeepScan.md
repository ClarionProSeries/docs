---
title: "vuAutoDetectCancelDeepScan"
function_name: "vuAutoDetectCancelDeepScan"
last_updated: "2026-03-22"
---

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuAutoDetectCancelDeepScan

## Clarion prototype

**Prototype:** vuAutoDetectCancelDeepScan(LONG InHandle), SIGNED, PROC, PASCAL, RAW, NAME('vuAutoDetectCancelDeepScan')

Requests cancellation of an asynchronous deep autodetect job. Cancellation is cooperative and takes effect between autodetect stages and probe attempts.

## Example (Clarion)
```clarion
rc     LONG
handle LONG

handle = 1   ! Use the handle returned by vuAutoDetectStartDeepScan.
rc = vuAutoDetectCancelDeepScan(handle)

IF rc = 0
  MESSAGE('Deep scan was not canceled: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)
