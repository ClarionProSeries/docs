
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuPOP3Disconnect()

```Prototype
vuPOP3Disconnect(), LONG
```

## Purpose
Closes the current POP3 session.

## Parameters
This function takes no parameters.

## Return value
- `0` = disconnected successfully, or no active connection remained.
- `< 0` = disconnect or POP3 shutdown error.

## Notes
- Call this when you are finished receiving, counting, loading, or deleting POP3 messages.
- It is safe to use this in cleanup code.
- If messages were marked for deletion, normal POP3 session shutdown rules determine when that deletion is committed.

## Clarion example
```clarion
RC   LONG

RC = vuPOP3Disconnect()
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)