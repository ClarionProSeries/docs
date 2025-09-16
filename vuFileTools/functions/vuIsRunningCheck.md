[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuIsRunningCheck(PgmName)

```Prototype
vuIsRunningCheck(*CSTRING), Signed
```


## Description
Determines if a program is already running by checking for a named mutex. Unlike `vuIsRunning`, this function only checks if the mutex exists and does not create one.

### Parameters

| Parameter | Data Type    | Description                                                |
|-----------|--------------|------------------------------------------------------------|
| PgmName   | CSTRING(40)  | A unique name for the mutex (does not have to be the program name, but should be unique) |

### Returns
1 (True) if the program is already running, 0 (False) otherwise.

### Example

```Clarion
PgmName = 'Program1'

IF vuIsRunningCheck(PgmName) = 1
  MESSAGE('Program is already running')
ELSE
  MESSAGE('Program is not running')
END
```

### Notes
- Use `vuIsRunning()` if you need to both check and create the mutex.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
