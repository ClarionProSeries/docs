
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailClient()

```Prototype
vuMailClient(), CSTRING
```

## Description
Returns the name of the default Windows mail client using the older vuMail compatibility behavior.

## Return value
- Returns the mail-client name as text.
- Returns an empty string if no value is available.

## Notes
- This is a legacy helper retained for compatibility with older code and older help examples.
- It is not part of the normal SMTP, POP3, or OAuth workflow for `vuMailKit`.
- In Clarion, legacy text-return helpers are typically declared as returning `CSTRING` even though the compatibility behavior comes from an internal null-terminated text buffer.

## Example (Clarion)
```clarion
MESSAGE('Default mail client: ' & vuMailClient())
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)