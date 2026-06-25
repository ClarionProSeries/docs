
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuAutoDetectStartDeepScan

## Clarion prototype

**Prototype:** vuAutoDetectStartDeepScan(*CSTRING InEmailAddress), SIGNED, PROC, PASCAL, RAW, NAME('vuAutoDetectStartDeepScan')

Starts an asynchronous deep autodetect job and returns a positive scan handle on success. Use this together with `vuAutoDetectPollDeepScan`, `vuAutoDetectGetDeepScanResult`, and `vuAutoDetectReleaseDeepScan`.

Deep scan includes a DLL-side hard timeout of about 300 seconds so obviously bad or non-responsive domains do not leave the vuMailKit Email Setup Wizard probing forever.

## Example (Clarion)
```clarion
handle LONG
email  CSTRING(256)

email = 'user@example.com'
handle = vuAutoDetectStartDeepScan(email)

IF handle <= 0
  MESSAGE('Deep scan did not start: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)