
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuAutoDetectReleaseDeepScan(InHandle)

```Prototype
vuAutoDetectReleaseDeepScan(LONG InHandle),Signed,PROC,Pascal,Raw,Name('vuAutoDetectReleaseDeepScan')
```

## Description

Releases the stored state for an asynchronous deep autodetect job after completion or cancel.

This is the cleanup call for the deep-scan handle lifecycle.

## Parameters

| Parameter | Data Type | Description |
|---|---|---|
| InHandle | LONG | Handle returned by `vuAutoDetectStartDeepScan()`. |

## Returns

- `1` = stored job state released
- `0` = handle not found
- `-401` = `vuMailKitInitialize()` was not called
- `-402` = invalid license or failed initialization
- `-403` = current license tier does not allow this feature

When the function returns `0`, call `vuMailLastError()` for the failure text.

## Notes

- Release the handle after you have either copied the final result or decided you no longer need the canceled or failed job state.
- Once released, the handle is no longer valid for polling, canceling, or result retrieval.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)