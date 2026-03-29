---
title: "vuAutoDetectGetDeepScanResult"
summary: "Copy the final settings from a completed deep autodetect job into caller-supplied output variables."
description: "Retrieves the final results from a completed asynchronous deep autodetect job and writes them into the same output variables used by the synchronous autodetect fill functions. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "autodetect", "deep scan", "result", "vuAutoDetectGetDeepScanResult"]
function_name: "vuAutoDetectGetDeepScanResult"
category: "Autodetect"
version_added: "2026.03"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuAutoDetectGetDeepScanResult(InHandle, ...)

```Prototype
vuAutoDetectGetDeepScanResult(LONG InHandle,LONG InOutBufLen,*CString OutProfileEmailAddress,*LONG OutConfidence,*LONG OutDetectSource,*LONG OutProviderId,*LONG OutSmtpAuthModeHint,*LONG OutPopAuthModeHint,*LONG OutImapAuthModeHint,*CString OutSmtpHost,*LONG OutSmtpPort,*LONG OutSmtpSecurityMode,*CString OutSmtpUser,*CString OutPopHost,*LONG OutPopPort,*LONG OutPopSecurityMode,*CString OutPopUser,*CString OutImapHost,*LONG OutImapPort,*LONG OutImapSecurityMode,*CString OutImapUser),Signed,PROC,Pascal,Raw,Name('vuAutoDetectGetDeepScanResult')
```

## Description

Copies final results from a completed asynchronous deep autodetect job into the same output variables used by `vuAutoDetectFillSettings()`.

This function gives you the actual discovered settings after `vuAutoDetectPollDeepScan()` reports that the job has completed.

## Parameters

- `InHandle` is the deep-scan handle returned by `vuAutoDetectStartDeepScan()`.
- `InOutBufLen` is the size used for the string output buffers.
- The remaining output variables receive the same result fields used by the synchronous autodetect fill functions.

## Returns

- Positive value = result copy succeeded
- `0` = no final result available
- `-401` = `vuMailKitInitialize()` was not called
- `-402` = invalid license or failed initialization
- `-403` = current license tier does not allow this feature

The function returns `0` when:

- the handle was not found
- the deep scan was canceled
- the deep scan failed
- the deep scan is still running

In those cases, `vuMailLastError()` explains why no result was returned.

## Notes

- Only call this after polling reports the completed state.
- If the scan failed or was canceled, there is no final result to copy.
- After collecting the result, call `vuAutoDetectReleaseDeepScan()` to release the stored job state.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
