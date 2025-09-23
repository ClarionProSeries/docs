---
title: "vuBatteryLife"
summary: "Returns the current battery life percentage."
description: "Returns the current battery life percentage. If the PC is running on AC power, the function returns 101. ### Parameters ### Returns
- A number between 0 and 100 indicating the percentage of battery life remaining.  
- A return of 101 indicates AC power. ### Example ### Notes
Place this function in your Windows timer loop for real-time monitoring of system power (see sample programs supplied). [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["current", "vuFileTools", "battery", "life", "vubatterylife", "general", "returns", "percentage", "Clarion", "Windows"]
function_name: "vuBatteryLife"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuBatteryLife()

```Prototype
vuBatteryLife(), LONG
```


## Description
Returns the current battery life percentage. If the PC is running on AC power, the function returns 101.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
- A number between 0 and 100 indicating the percentage of battery life remaining.  
- A return of 101 indicates AC power.

### Example

```Clarion
MESSAGE('Battery Life Remaining = ' & vuBatteryLife() & '%')
```

### Notes
Place this function in your Windows timer loop for real-time monitoring of system power (see sample programs supplied).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
