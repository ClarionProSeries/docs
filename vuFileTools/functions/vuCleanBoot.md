[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCleanBoot()

```Prototype
vuCleanBoot(), Signed
```


## Description
Checks whether the PC was last booted normally (not in Safe Mode). Under Safe Mode, most drivers are not loaded. Use this function at the start of your application to warn the user or terminate if required drivers are missing.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
1 (True) if the PC was last booted cleanly (normal mode), 0 (False) if the PC was booted in Safe Mode.

### Example

```Clarion
IF vuCleanBoot() = 0
  MESSAGE('System is in Safe Mode. Exiting program.')
  RETURN
END
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
