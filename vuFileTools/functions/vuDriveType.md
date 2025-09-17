[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuDriveType(Drive)

```Prototype
vuDriveType(*CSTRING), Signed
```


## Description
Returns the type of disk drive for the given drive letter.

### Parameters

| Parameter | Data Type   | Description                                  |
|-----------|-------------|----------------------------------------------|
| Drive     | CSTRING(1)  | Drive letter to test (e.g., `'A'`, `'C'`)    |

### Returns
One of the following values:  
- 0 = Drive Unknown  
- 1 = Drive Unavailable  
- 2 = Removable Drive  
- 3 = Fixed Drive  
- 4 = Network Drive  
- 5 = CD/DVD Drive  
- 6 = RAM Disk  

### Example

```Clarion
LOC:Drive = 'D'

IF vuDriveType(LOC:Drive) = 4
  MESSAGE('This drive is a Network Drive')
END
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
