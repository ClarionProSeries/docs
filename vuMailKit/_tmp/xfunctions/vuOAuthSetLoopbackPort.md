
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuOAuthSetLoopbackPort

## Purpose

Store the loopback port used for OAuth providers that complete login through a local callback.

## Export name

- `vuOAuthSetLoopbackPort`

## Clarion prototype (Inside Global MAP)

- `vuOAuthSetLoopbackPort(*CSTRING Provider,*CSTRING AccountKey,LONG LoopbackPort,*CSTRING OutText,LONG OutTextLen),Signed,PROC,Pascal,Raw,Name('vuOAuthSetLoopbackPort')`

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| Provider | *CSTRING | Provider name. | Typical values: `google`, `microsoft`. |
| AccountKey | *CSTRING | Account key that owns this app configuration. | Usually the email address. |
| LoopbackPort | LONG | Loopback TCP port to use for callback handling. | Use a valid TCP port such as `8085`. |
| OutText | *CSTRING | Receives status text. | Writable text buffer. |
| OutTextLen | LONG | Length of `OutText` in bytes. | Pass `SIZE(OutText)`. |

## Expected values and ranges

- `LoopbackPort` should be a valid TCP port number.
- Use the same port in your provider app registration if the provider requires an exact redirect URI.

## Return value

- `1` = loopback port stored successfully.
- `0` = the operation failed.

## Clarion example

```clarion
Provider                 CSTRING(40)
AccountKey               CSTRING(254)
LoopbackPort             LONG
OutText                  CSTRING(512)
OutTextLen               LONG
Result                   LONG

Provider = 'google'
AccountKey = 'user@example.com'
LoopbackPort = 8085
OutTextLen = SIZE(OutText)
CLEAR(OutText)
Result = vuOAuthSetLoopbackPort(Provider, AccountKey, LoopbackPort, OutText, OutTextLen)
```

## Notes

- This is mainly used for loopback-style OAuth flows.