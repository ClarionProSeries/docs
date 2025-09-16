[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

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

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
