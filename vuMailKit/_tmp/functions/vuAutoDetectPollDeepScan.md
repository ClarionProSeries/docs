
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuAutoDetectPollDeepScan

## Clarion prototype

**Prototype:** vuAutoDetectPollDeepScan(LONG InHandle, *LONG OutState, *LONG OutStage, *CSTRING OutStatusText, LONG InOutStatusTextLen), SIGNED, PROC, PASCAL, RAW, NAME('vuAutoDetectPollDeepScan')

Polls an asynchronous deep autodetect job. State values are 0 = running, 1 = completed, 2 = canceled, and -1 = failed. Stage values mirror autodetect source values while the job is running.

During long stage-6 probe scans, the returned status text may become stronger after about 90 seconds and 180 seconds to tell the UI that the scan is taking longer than normal. If the job reaches about 300 seconds, polling will transition to the failed state and the status text will indicate that the user should complete the settings manually.

## Example (Clarion)
```clarion
rc         LONG
handle     LONG
scanState  LONG
scanStage  LONG
statusText CSTRING(512)

handle = 1   ! Use the handle returned by vuAutoDetectStartDeepScan.
statusText = ''

rc = vuAutoDetectPollDeepScan(handle, scanState, scanStage, |
                              statusText, SIZE(statusText))

MESSAGE('State=' & scanState & '|Stage=' & scanStage & '|Status=' & statusText)
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)