[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuIsRunning(PgmName)

```Prototype
vuIsRunning(*CSTRING), Signed
```


## Description
Determines if a program is already running by checking for a named mutex. If the mutex does not exist, the function creates it. This is typically used to prevent multiple instances of the same application from running.

### Parameters

| Parameter | Data Type    | Description                                                |
|-----------|--------------|------------------------------------------------------------|
| PgmName   | CSTRING(40)  | A unique name for the mutex (does not have to be the program name, but should be unique) |

### Returns
1 (True) if the program is already running, 0 (False) otherwise.

### Example

```Clarion
IF vuIsRunning('My Excellent Utility Pkg') = 1
  MESSAGE('Program is already running')
  RETURN
END
```

### Notes
- Use `vuIsRunningCheck` if you want to check whether a program is running **without** creating the mutex.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
