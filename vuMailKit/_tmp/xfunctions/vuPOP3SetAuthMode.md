
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3SetAuthMode()

```Prototype
vuPOP3SetAuthMode(LONG), LONG
```

## Description
Sets the POP3 authentication mode stored in the live runtime configuration.

## Parameter
- `Value` - Numeric authentication mode to store.

## Return value
- Returns `0`.

## Notes
- Set this before connecting when you need to override the current POP3 authentication mode.
- In most profile-driven setups, this is handled for you and does not need to be changed manually.

## Example (Clarion)
```clarion
RC LONG

RC = vuPOP3SetAuthMode(1)
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)