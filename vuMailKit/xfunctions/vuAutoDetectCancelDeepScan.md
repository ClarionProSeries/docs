---
title: "vuAutoDetectCancelDeepScan"
summary: "Request cancellation of an asynchronous deep autodetect job."
description: "Signals a previously started deep autodetect job to stop as soon as it reaches a safe cancellation point. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "autodetect", "deep scan", "cancel", "vuAutoDetectCancelDeepScan"]
function_name: "vuAutoDetectCancelDeepScan"
category: "Autodetect"
version_added: "2026.03"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuAutoDetectCancelDeepScan(InHandle)

```Prototype
vuAutoDetectCancelDeepScan(LONG InHandle),Signed,PROC,Pascal,Raw,Name('vuAutoDetectCancelDeepScan')
```

## Description

Requests cancellation of an asynchronous deep autodetect job.

Cancellation is cooperative. vuMailKit stops the scan between autodetect stages and probe attempts rather than aborting in the middle of an unsafe operation.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InHandle | LONG | Handle returned by `vuAutoDetectStartDeepScan()`. |

## Returns

- `1` = cancellation request accepted
- `0` = handle not found or cancellation could not be requested
- `-401` = `vuMailKitInitialize()` was not called
- `-402` = invalid license or failed initialization
- `-403` = current license tier does not allow this feature

When the function returns `0`, call `vuMailLastError()` for the failure text.

## Notes

- A return value of `1` means the cancellation request was accepted. It does not guarantee the job has already fully stopped.
- After canceling, continue polling with `vuAutoDetectPollDeepScan()` until the state becomes `2` for canceled.
- After you are done with the canceled job, call `vuAutoDetectReleaseDeepScan()`.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
