[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuIsNetworkSlow(Threshold)

```Prototype
vuIsNetworkSlow(LONG), LONG
```


## Description
Determines whether the primary network connection is slower than a specified threshold. Uses the speed reported by `vuPrimaryLinkSpeed()`.

### Parameters

| Parameter  | Data Type | Description                                                                 |
|------------|-----------|-----------------------------------------------------------------------------|
| Threshold  | LONG      | Minimum acceptable speed in Mbps. If the link speed is below this value, it is considered "slow". |

### Returns
- 1: Network speed is below the threshold (slow)  
- 0: Network speed meets or exceeds the threshold  
- -1: Network speed could not be determined  

### Example

```Clarion
Threshold LONG
RetVal    LONG
SpeedVal  LONG
OutMsg    CSTRING(256)

Threshold = 25
RetVal    = vuIsNetworkSlow(Threshold)

IF (RetVal = -1)
  OutMsg = 'Network speed unknown. Cannot determine slow status.'
ELSIF (RetVal = 1)
  SpeedVal = vuPrimaryLinkSpeed()
  IF (SpeedVal > 0)
    OutMsg = 'Network is slow. ' & FORMAT(SpeedVal) & ' Mbps < ' & FORMAT(Threshold) & ' Mbps'
  ELSE
    OutMsg = 'Network is slow or disconnected. Below ' & FORMAT(Threshold) & ' Mbps'
  END
ELSE
  SpeedVal = vuPrimaryLinkSpeed()
  OutMsg = 'Network is OK. ' & FORMAT(SpeedVal) & ' Mbps >= ' & FORMAT(Threshold) & ' Mbps'
END

MESSAGE(OutMsg, 'vuIsNetworkSlow Test')

```
Notes

Relies on the value from vuPrimaryLinkSpeed().

Useful for adaptive behavior when running on slower networks.


Ch

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
