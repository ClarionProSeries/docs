
# vuOAuthSetProviderEnabled

This is a preferred function introduced in vuMailKit 1.0.

## Purpose

Allow the application to explicitly enable or suppress OAuth support for a specific provider.
This is used to keep the setup UX honest: if a provider is detected but the application does not
support OAuth for that provider (for example, no app credentials have been configured yet, or the
developer chooses to suppress it), vuMailKit should not present OAuth as an available option.

This function does not persist settings. It affects the current process runtime only.

## Parameters

- Provider (LONG)  
  Provider constant:

  - 1 = Google / Gmail
  - 2 = Microsoft 365 / Outlook
  - 3 = Yahoo / AOL (legacy disabled; enabling it does not restore active Yahoo OAuth support)

- EnableFlag (LONG)  
  - 0 = Disable OAuth for this provider
  - 1 = Enable OAuth for this provider

## Return Value

Returns a LONG result code:

- 1 = Success
- 0 = Failure (unknown provider)

## Notes

- This function is part of the "hybrid" policy model:
  - A provider must be enabled, and required app credentials must be present, for OAuth to be considered supported.
- See also:
  - [vuOAuthDetectProviderFromEmail](../functions-oauth.md)
    - [OAuth Support](../oauth.md)