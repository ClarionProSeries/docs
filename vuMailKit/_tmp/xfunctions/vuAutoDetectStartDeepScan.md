
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuAutoDetectStartDeepScan(InEmailAddress)

```Prototype
vuAutoDetectStartDeepScan(*CString InEmailAddress),Signed,PROC,Pascal,Raw,Name('vuAutoDetectStartDeepScan')
```

## Description

Starts the asynchronous deep autodetect pipeline for the email address you provide.

This is the long-running autodetect path used when the quick detection pass was not enough or when you intentionally want the deeper probe logic. Instead of blocking the Clarion UI while the DLL works through the deeper checks, vuMailKit creates a background job and returns a positive scan handle.

You then use that handle to:

- poll progress with `vuAutoDetectPollDeepScan()`
- collect final settings with `vuAutoDetectGetDeepScanResult()`
- cancel the job with `vuAutoDetectCancelDeepScan()`
- release the stored job state with `vuAutoDetectReleaseDeepScan()`

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InEmailAddress | *CSTRING | Email address to analyze. Pass the full mailbox address such as `name@example.com`. |

## Returns

- Positive value = deep-scan handle created successfully
- `0` = job could not be created
- `-401` = `vuMailKitInitialize()` was not called
- `-402` = invalid license or failed initialization
- `-403` = current license tier does not allow this feature

When the function returns `0`, call `vuMailLastError()` for the failure text.

## Notes

- Deep scan is a Basic-tier feature, so it is license-gated.
- The deep scan includes a hard DLL-side timeout of roughly 300 seconds so a bad or non-responsive domain does not leave the wizard probing forever.
- The returned handle is process-local. Keep it only for the current running session.
- A successful start only means the job was created. It does not mean detection has completed yet.

## Typical Clarion pattern

```Clarion
ScanHandle   LONG
State        LONG
Stage        LONG
StatusText   CSTRING(256)

ScanHandle = vuAutoDetectStartDeepScan(UserEmail)
IF (ScanHandle > 0)
  ! poll later with vuAutoDetectPollDeepScan()
END
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)