---
title: "vuRecordWav"
summary: "Records audio from the microphone input and saves it as a WAV file."
description: "Records audio from the microphone input and saves it as a WAV file. ### Parameters ### Returns
A LONG value:  
- Always returns 1 (True).   ### Example ### Notes
- Uses the Media Control Interface (MCI) for recording.  
- Creates an 8-bit, 11025 Hz sample rate WAV file.  
- Overwrites the specified file if it already exists. [Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)"
keywords: ["vuFileTools", "records", "microphone", "from", "general", "vurecordwav", "audio", "input", "Clarion", "saves", "Windows", "file"]
function_name: "vuRecordWav"
category: "General"
version_added: "5.0"
last_updated: "2025-09-23"
---

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuRecordWav(Start, Filename)

```Prototype
vuRecordWav(LONG,*CSTRING), Signed
```


## Description
Records audio from the microphone input and saves it as a WAV file.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| Start     | LONG         | Set to 1 (True) to begin recording, 0 (False) to stop and save the recording. |
| Filename  | CSTRING(256) | Fully qualified path and filename for the WAV file to create.               |

### Returns
A LONG value:  
- Always returns 1 (True).  

### Example

```Clarion
Filename = 'C:\Temp\MyWave.wav'

! Start recording
vuRecordWav(1, Filename)

! ... user speaks into microphone ...

! Stop recording and save
vuRecordWav(0, Filename)
```

### Notes
- Uses the Media Control Interface (MCI) for recording.  
- Creates an 8-bit, 11025 Hz sample rate WAV file.  
- Overwrites the specified file if it already exists.

[Home](../index.md) | [All functions](index.md) | [Categories](../categories/index.md)
