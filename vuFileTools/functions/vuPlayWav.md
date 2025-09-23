---
title: "vuPlayWav"
summary: "Plays a `."
description: "Plays a `.wav` audio file and optionally waits for playback to complete before returning. ### Parameters ### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure   ### Example ### Notes
- Allows synchronous or asynchronous playback.  
- Useful when you want to pause program execution until the audio has finished (for example, as an attention cue before instructions). [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "vuplaywav", "general", "Clarion", "plays", "Windows"]
function_name: "vuPlayWav"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuPlayWav(WavFile, Wait)

```Prototype
vuPlayWav(*CSTRING,LONG), Signed
```


## Description
Plays a `.wav` audio file and optionally waits for playback to complete before returning.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| WavFile   | CSTRING(256) | Fully qualified path and filename of the WAV file to play.                  |
| Wait      | LONG         | Playback mode flag: 0 = return immediately, 1 = wait until playback finishes. |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
xWav = 'C:\MyWavs\test.wav'    ! CSTRING
vuPlayWav(xWav, 0)             ! Play asynchronously

! Or wait until playback completes
vuPlayWav(xWav, 1)
```

### Notes
- Allows synchronous or asynchronous playback.  
- Useful when you want to pause program execution until the audio has finished (for example, as an attention cue before instructions).

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
