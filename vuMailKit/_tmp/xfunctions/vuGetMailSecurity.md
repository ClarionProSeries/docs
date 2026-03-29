
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuGetMailSecurity()

```Prototype
vuGetMailSecurity(*CSTRING, *CSTRING, *LONG, *LONG), LONG
```

## Purpose
Gets the current SMTP account and security-related runtime values.

This is the legacy `vuMail` function name for `vuSmtpGetSecurity()`.

Preferred function name:

- [vuSmtpGetSecurity()](vuSmtpGetSecurity.md)

## Parameters

| Parameter | Type | Description |
|---|---|---|
| UserName | *CSTRING | Receives the current SMTP user name. |
| Password | *CSTRING | Receives the current SMTP password. |
| SecurityMode | *LONG | Receives the current connection security mode. |
| AuthMode | *LONG | Receives the current SMTP authentication mode. |

## Return value
- `1` = values returned successfully.
- `0` = no SMTP security values are currently available.

## Notes
- This reads the current live runtime values.
- It is useful for diagnostics, migration helpers, or admin screens that display the current SMTP configuration.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)