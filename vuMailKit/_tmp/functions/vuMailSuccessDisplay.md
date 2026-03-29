
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailSuccessDisplay(Enable)

```Prototype
vuMailSuccessDisplay(LONG Enable),SIGNED,PROC,PASCAL,RAW,NAME('vuMailSuccessDisplay')
```

## Description
Sets the runtime flag that controls whether vuMailKit automatically displays a success message after an email is sent.

### Parameters

| Parameter | Data Type | Description |
|---|---|---|
| Enable | LONG | 1 enables automatic success display. 0 disables it. |

## Return value
Returns 1 on success.

## Notes
- This is a compatibility export. It controls vuMailKit behavior, not any legacy code path.

### Example

````clarion
ROUTINE:Test_vuMailSuccessDisplay   ROUTINE
  DATA
RC      LONG
Flag    LONG

  CODE
  Flag = 1
  RC = vuMailSuccessDisplay(Flag)
  STOP('RC=' & RC & '|Flag=' & Flag)
````

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)