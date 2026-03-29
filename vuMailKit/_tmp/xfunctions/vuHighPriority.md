
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuHighPriority()

```Prototype
vuHighPriority(), LONG
```

## Purpose
Marks the next outbound email as high priority.

## Return value
- `1` = flag set successfully.

## Notes
- Set this before calling a send function.
- The flag affects the next message built from the current runtime state.
- Use this only when you need a message to be flagged urgent or high priority in the recipient's mail client.

## Clarion example
```clarion
RC      LONG

RC = vuHighPriority()
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)