---
title: "vuInternetPresent"
summary: "Reports whether Windows believes that Internet connectivity is available."
description: "Reports whether Windows currently believes that Internet connectivity is available, based on WinINet InternetGetConnectedState. Returns 1 when Internet is reported, 0 when offline or status is unknown."
keywords: ["vuFileTools", "networking", "internet", "connectivity", "vunetworkpresent", "vuInternetPresent", "Clarion", "Windows"]
function_name: "vuInternetPresent"
category: "Networking"
version_added: "5.0"
last_updated: "2025-12-03"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuInternetPresent()

```Prototype
vuInternetPresent(), LONG
```

## Description

Reports whether Windows currently believes that Internet connectivity is available. This function uses WinINet to query the system Internet connection state. It is a fast heuristic and does not contact any specific server.

### Parameters

| Parameter | Data Type | Description                        |
|-----------|-----------|------------------------------------|
| None      |           | This function takes no parameters. |

### Returns

A LONG value:  

- 0 = Windows does not report Internet connectivity, or status is unknown  
- 1 = Windows reports that some form of Internet connectivity is available  

### Example

```Clarion
TestInternetPresent  PROCEDURE

RetVal  LONG

  CODE
  RetVal = vuInternetPresent()

  IF (RetVal = 1)
    MESSAGE('Windows reports that Internet connectivity is available.')
  ELSE
    MESSAGE('Windows does not report Internet connectivity, or status is unknown.')
  END
```

### Notes

- Uses WinINet (WININET.DLL) and the InternetGetConnectedState API.
- This is a heuristic. It can report that Internet is available even if you are behind a captive portal or if a particular service is not reachable.
- To verify that a specific URL or service endpoint is reachable, use [vuInternetCanReachUrl](vuInternetCanReachUrl.md).
- For basic network presence and LAN or WAN detection, see [vuNetworkPresent](vuNetworkPresent.md).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
