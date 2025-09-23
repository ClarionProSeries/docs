---
title: "vuStringParse"
summary: "Parses a string based on the specified delimiter and returns the requested segment."
description: "Parses a string based on the specified delimiter and returns the requested segment. The delimiter can be one or more characters. ### Parameters ### Returns
A CSTRING containing the segment of `MainStrg` between the specified delimiters. ### Example ### Notes
- If the segment number is greater than the number of segments available, an empty string may be returned.  
- Supports multi-character delimiters.   Chat [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["string", "vustringparse", "vuFileTools", "specified", "delimiter", "returns", "segment", "parses", "Clarion", "based", "Windows", "utilities"]
function_name: "vuStringParse"
category: "String Utilities"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuStringParse(MainStrg, subStrg, Segment)

```Prototype
vuStringParse(*CSTRING, *CSTRING, LONG), CSTRING
```


## Description
Parses a string based on the specified delimiter and returns the requested segment. The delimiter can be one or more characters.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| MainStrg  | CSTRING(256) | The input string to parse.                                                  |
| subStrg   | CSTRING(128) | The delimiter string (one or more characters).                              |
| Segment   | LONG         | The segment number to return (1-based index).                               |

### Returns
A CSTRING containing the segment of `MainStrg` between the specified delimiters.

### Example

```Clarion
MainStrg = 'Segment1<>Segment2<>Segment3<>Segment4'
subStrg  = '<>'

Result = vuStringParse(MainStrg, subStrg, 3)
MESSAGE(Result)
! Result: 'Segment3'
```

### Notes
- If the segment number is greater than the number of segments available, an empty string may be returned.  
- Supports multi-character delimiters.  


Chat

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
