---
title: "vuMCIsend"
summary: "Sends the specified command string to the Media Control Interface (MCI) device."
description: "Sends the specified command string to the Media Control Interface (MCI) device. ### Parameters ### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure   ### Example ### Notes
- The Media Control Interface (MCI) supports commands for controlling multimedia devices such as CD audio, wave audio, MIDI, and others.  
- Example shown demonstrates opening a CD drive door. Other commands can control playback, recording, and device settings. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["command", "string", "vuFileTools", "vumcisend", "control", "specified", "general", "media", "interface", "Clarion", "sends", "Windows"]
function_name: "vuMCIsend"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMCIsend(SendStrg)

```Prototype
vuMCISend(*CSTRING), Long
```


## Description
Sends the specified command string to the Media Control Interface (MCI) device.

### Parameters

| Parameter | Data Type    | Description                                 |
|-----------|--------------|---------------------------------------------|
| SendStrg  | CSTRING(256) | Text command to send to the MCI device.     |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
SendStrg = 'Set CDAudio Door Open'
IF vuMCIsend(SendStrg)
  MESSAGE('CD door opened.')
ELSE
  MESSAGE('Failed to send MCI command.')
END
```

### Notes
- The Media Control Interface (MCI) supports commands for controlling multimedia devices such as CD audio, wave audio, MIDI, and others.  
- Example shown demonstrates opening a CD drive door. Other commands can control playback, recording, and device settings.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
