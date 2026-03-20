
[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuNetworkPresent()

```Prototype
vuNetworkPresent(), LONG
```

## Description

Detects whether a TCP/IP network is present and reports the type of connectivity that Windows currently sees.

Internally this wraps the Windows IsNetworkAlive API and returns its flag bits. That API reports:

- A LAN flag when at least one active network adapter with TCP/IP is up  
- A WAN flag when a RAS or VPN style connection is active on the local machine  

This function is intended as a quick presence check that answers the question:  
"Does Windows think I am on any network, and is a RAS or VPN style connection involved"

It is not an Internet connectivity check. For that, see [vuInternetPresent](vuInternetPresent.md) and [vuInternetCanReachUrl](vuInternetCanReachUrl.md).

### Parameters

| Parameter | Data Type | Description                        |
|-----------|-----------|------------------------------------|
| None      |           | This function takes no parameters. |

### Returns

A LONG value that reflects the underlying IsNetworkAlive flags:

- 0 = No network detected (no LAN and no RAS or VPN connection)  
- 1 = LAN flag set (one or more active TCP/IP adapters)  
- 2 = WAN flag set (RAS or VPN style connection)  
- 3 = Both LAN and WAN flags set  

Typical patterns:

- Home or small office behind a router or firewall, no VPN  
  - Usually returns 1 while the machine is on the network  
- Corporate LAN with direct Internet and no client VPN  
  - Usually returns 1 while the machine is on the network  
- Remote or mobile user with a VPN client  
  - Often returns 3, because both LAN and RAS or VPN flags are set  
- Pure dialup or RAS style connection, no separate LAN adapter  
  - May return 2 if the WAN flag is set and no LAN is active  

### Example

```Clarion
CASE vuNetworkPresent()
OF 0
  MESSAGE('No network detected.')
OF 1
  MESSAGE('LAN connection detected.')
OF 2
  MESSAGE('WAN (RAS or VPN) connection detected.')
OF 3
  MESSAGE('Both LAN and WAN connections are present.')
END
```

### Notes

- Requires Internet Explorer 5.0 or higher on the target system because it relies on SENSAPI.
- A WAN result (2 or 3) indicates that a RAS or VPN style connection is active on the local machine. It does not guarantee that the public Internet is reachable.
- Modern home and corporate networks that reach the Internet through a router or firewall but do not use a client VPN will usually return 1 when the machine is online.
- On virtual machines, the function reports what the guest operating system sees. For example, a bridged or NAT virtual adapter that is up will set the LAN flag even though the host is doing the actual Internet routing.
- For a quick heuristic that reports whether Windows believes Internet connectivity is available, use [vuInternetPresent](vuInternetPresent.md).
- To verify that a specific URL or service endpoint is reachable within a timeout, use [vuInternetCanReachUrl](vuInternetCanReachUrl.md).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)