
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuInternetCanReachUrl()

```Prototype
vuInternetCanReachUrl(Url *CSTRING, TimeoutMs LONG), LONG
```

## Description

Tests whether a specific URL can be reached within a caller supplied timeout. The function opens a WinINet session using the current Windows Internet settings, then attempts to open the given URL.

This is useful for checking connectivity to a particular service endpoint, not just generic Internet access.

### Parameters

| Parameter | Data Type | Description |
|----------|-----------|-------------|
| Url      | *CSTRING  | Fully qualified URL to test, for example `https://www.example.com/`. |
| TimeoutMs| LONG      | Timeout in milliseconds for both connect and receive operations. If less than or equal to 0, a default value of 5000 ms is used. |

### Returns

A LONG value:  

- 1 = URL was opened successfully within the timeout  
- 0 = URL could not be opened (network error, timeout, DNS failure, or other error)  
- -1 = Parameter or API setup error (for example, invalid Url pointer or WinINet not available)  

### Example

```Clarion
TestInternetCanReachUrl  PROCEDURE

RetVal   LONG
Url      CSTRING(256)

  CODE
  Url = 'https://www.example.com/'

  RetVal = vuInternetCanReachUrl(Url,3000)

  IF (RetVal = 1)
    MESSAGE('URL reachable within timeout: ' & Url)
  ELSIF (RetVal = 0)
    MESSAGE('URL not reachable or timed out: ' & Url)
  ELSE
    MESSAGE('Parameter or API setup error when checking URL: ' & Url)
  END
```

### Notes

- Uses WinINet (WININET.DLL) and the InternetOpen / InternetOpenUrl APIs.
- Honors the current user or machine Internet settings, including proxies where applicable.
- For a quick, general Internet presence check, use [vuInternetPresent](vuInternetPresent.md).
- For basic network presence and LAN or WAN detection, see [vuNetworkPresent](vuNetworkPresent.md).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)