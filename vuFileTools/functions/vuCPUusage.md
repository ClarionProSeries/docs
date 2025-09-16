[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuCPUusage()

```Prototype
vuCPUusage(), Signed
```


## Description
Measures the percentage of CPU usage between calls to this function. The returned value represents the average CPU usage across the interval since the last call. The function compensates internally for systems with multiple processors.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
The average CPU usage percentage (0100) since the last call.

### Example

```Clarion
! Measure CPU usage every second in a timer loop
xPct = vuCPUUsage()
MESSAGE('CPU usage = ' & xPct & '%')
```

### Notes
- The function name in older documentation was incorrectly listed as `vuCPUSpeed`.  
- The correct name is `vuCPUusage`.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
