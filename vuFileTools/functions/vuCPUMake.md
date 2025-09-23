---
title: "vuCPUMake"
summary: "Returns the make and model of the PCs CPU."
description: "Returns the make and model of the PCs CPU. ### Parameters ### Returns
A null-terminated CSTRING containing the CPU make and model. Possible return values include:  
- AMD, AMD K5, AMD K6  
- IDT/WinChip  
- Cyrix  
- Intel 386, Intel 486, Pentium, Pentium Pro  
- Celeron  
- Pentium II, Pentium III, Pentium IV  
- TransMeta  
- NexGen  
- Rise  
- UMC U5   ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "make", "model", "general", "returns", "Clarion", "vucpumake", "Windows"]
function_name: "vuCPUMake"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuCPUMake()

```Prototype
vuCPUMake(), CSTRING
```


## Description
Returns the make and model of the PCs CPU.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A null-terminated CSTRING containing the CPU make and model. Possible return values include:  
- AMD, AMD K5, AMD K6  
- IDT/WinChip  
- Cyrix  
- Intel 386, Intel 486, Pentium, Pentium Pro  
- Celeron  
- Pentium II, Pentium III, Pentium IV  
- TransMeta  
- NexGen  
- Rise  
- UMC U5  

### Example

```Clarion
MESSAGE('The CPU in this computer is a ' & vuCPUMake())
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
