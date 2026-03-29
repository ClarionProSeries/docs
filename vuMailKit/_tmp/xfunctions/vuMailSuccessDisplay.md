
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailSuccessDisplay(Enable)

```Prototype
vuMailSuccessDisplay(LONG), LONG
```

## Purpose
Controls whether vuMailKit automatically displays a success message after a send operation.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| Enable | LONG | `1` enables automatic success display. `0` disables it. |

## Return value
- `1` = flag set successfully.

## Notes
- This changes the current runtime behavior only.
- Use this when you want vuMailKit to show its own simple success feedback, or disable it so your application can handle all UI itself.
- This is mainly a legacy-style convenience setting.

## Clarion example
```clarion
RC      LONG

RC = vuMailSuccessDisplay(0)
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)