
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuAutoDetectPollDeepScan(InHandle, OutState, OutStage, OutStatusText, InOutStatusTextLen)

```Prototype
vuAutoDetectPollDeepScan(LONG InHandle,*LONG OutState,*LONG OutStage,*CString OutStatusText,LONG InOutStatusTextLen),Signed,PROC,Pascal,Raw,Name('vuAutoDetectPollDeepScan')
```

## Description

Polls a deep autodetect job that was started with `vuAutoDetectStartDeepScan()`.

This function is meant for UI loops, timers, or wizard progress screens. It tells you whether the job is still running, completed, canceled, or failed, and it also gives you a stage value plus a status text string suitable for showing to the user.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InHandle | LONG | Handle returned by `vuAutoDetectStartDeepScan()`. |
| OutState | *LONG | Receives the current overall state. |
| OutStage | *LONG | Receives the current autodetect stage while the job is running. |
| OutStatusText | *CSTRING | Receives human-readable status text. |
| InOutStatusTextLen | LONG | Size of the caller-supplied `OutStatusText` buffer. |

## Return value

The function returns the same state value written into `OutState`.

State values are:

- `0` = running
- `1` = completed
- `2` = canceled
- `-1` = failed
- `-401` = `vuMailKitInitialize()` was not called
- `-402` = invalid license or failed initialization
- `-403` = current license tier does not allow this feature

If the handle is not found, the function reports a failed state and sets `vuMailLastError()`.

## Notes

- Stage values mirror the autodetect source/probe stages while the job is active.
- During long stage-6 probe scans, the status text may become stronger after roughly 90 seconds and 180 seconds to tell the UI that the scan is taking longer than normal.
- If the job reaches about 300 seconds, polling transitions to failed and the status text indicates that the user should complete the settings manually.
- Polling does not free the job. Call `vuAutoDetectReleaseDeepScan()` after you are finished with it.

## Typical Clarion pattern

```Clarion
State      LONG
Stage      LONG
StatusText CSTRING(256)

State = vuAutoDetectPollDeepScan(ScanHandle, State, Stage, StatusText, SIZE(StatusText))
IF (State = 1)
  ! completed
ELSIF (State = -1)
  ! failed
END
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)