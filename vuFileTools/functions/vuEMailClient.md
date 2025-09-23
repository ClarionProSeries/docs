---
title: "vuEmailClient"
summary: "Returns the name of the PCs default email client."
description: "Returns the name of the PCs default email client. ### Parameters ### Returns
A CSTRING containing the name of the default email client (e.g., Outlook, Outlook Express, Thunderbird). ### Example [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "client", "name", "general", "returns", "default", "email", "Clarion", "vuemailclient", "Windows"]
function_name: "vuEmailClient"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuEmailClient()

```Prototype
vuEMailClient(), CSTRING
```


## Description
Returns the name of the PCs default email client.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| None      |          | This function takes no parameters |

### Returns
A CSTRING containing the name of the default email client (e.g., Outlook, Outlook Express, Thunderbird).

### Example

```Clarion
MESSAGE('My email client is ' & vuEmailClient())
```

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
