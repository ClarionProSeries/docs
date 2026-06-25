
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuOAuthSetProviderEnabled()

## Purpose

Enables or disables OAuth support for a specific provider during the current process.

This is used by setup screens to keep provider detection honest. A provider may be detected from an address, but OAuth should not be offered unless that provider is enabled and the required app credentials are present.

This function does not persist settings. It affects the current process runtime only.

## Clarion prototype

**Prototype:** vuOAuthSetProviderEnabled(LONG InProviderId, LONG InEnabled), LONG, PROC, PASCAL, RAW, NAME('vuOAuthSetProviderEnabled')

## Parameters

| Parameter | Type | Description |
|---|---|---|
| InProviderId | LONG | Provider id: 1 = Google/Gmail, 2 = Microsoft, 3 = Yahoo/AOL legacy disabled. |
| InEnabled | LONG | 0 = disable OAuth for this provider, 1 = enable OAuth for this provider. |

## Return value / error codes

| Value | Meaning |
|---|---|
| 1 | Success. |
| 0 | Unknown provider id. |
| -3 | InEnabled was not 0 or 1. |

## Example (Clarion)

```clarion
Result LONG

! Enable Google/Gmail OAuth for the current process.
Result = vuOAuthSetProviderEnabled(1, 1)
IF Result <> 1
  MESSAGE('OAuth provider setting was not changed: ' & Result)
END
```

## Notes

- Provider id 3 is preserved for Yahoo/AOL legacy-disabled handling. Enabling it does not restore active Yahoo OAuth support.
- A provider must be enabled and have required app credentials before [vuOAuthDetectProviderFromEmail](vuOAuthDetectProviderFromEmail.md) reports it as supported.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)