
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuSetMailSecurity()

```Prototype
vuSetMailSecurity(*CSTRING, *CSTRING, LONG, LONG), LONG
```

## Purpose
Sets SMTP account and security-related runtime values.

This is the legacy `vuMail` function name for `vuSmtpSetSecurity()`.

Preferred function name:

- [vuSmtpSetSecurity()](vuSmtpSetSecurity.md)

## Parameters

| Parameter | Type | Description |
|---|---|---|
| UserName | *CSTRING | SMTP user name. |
| Password | *CSTRING | SMTP password. |
| SecurityMode | LONG | Connection security mode. |
| AuthMode | LONG | SMTP authentication mode. |

## Return value
- `1` = values accepted.
- `0` = the call was rejected.

## Notes
- This is a legacy convenience setter that updates several related runtime values in one call.
- In newer code, the preferred function name makes the SMTP-specific purpose clearer.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)