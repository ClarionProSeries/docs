[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuPrimaryLinkSpeed()

```Prototype
vuPrimaryLinkSpeed(), LONG
```


## Description
Retrieves the speed of the primary network connection, in megabits per second (Mbps).

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
- Positive value: Connection speed in Mbps  
- Zero: Unknown speed or not connected  
- Negative value: Error occurred  

### Example

```Clarion
RetVal LONG
OutMsg CSTRING(256)

RetVal = vuPrimaryLinkSpeed()

IF (RetVal < 0)
  OutMsg = 'vuPrimaryLinkSpeed error. Return value: ' & FORMAT(RetVal)
ELSIF (RetVal = 0)
  OutMsg = 'Primary link speed is unknown or not connected.'
ELSE
  OutMsg = 'Primary link speed: ' & FORMAT(RetVal) & ' Mbps'
END

MESSAGE(OutMsg, 'vuPrimaryLinkSpeed Test')

```
Notes

Returns the speed of the currently active primary adapter.

Useful for checking connection performance and for threshold-based network checks.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
