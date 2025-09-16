[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuSayText(text)

```Prototype
vuSayText(*CSTRING), Signed
```


## Description
Converts the specified text to speech using the Microsoft Speech API (SAPI). The function will not return until the spoken text has finished playing.

### Parameters

| Parameter | Data Type    | Description                                |
|-----------|--------------|--------------------------------------------|
| text      | CSTRING(256) | The text string to convert to spoken audio |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
text = 'Please select your choice of options'

IF vuSayText(text)
  MESSAGE('Speech completed successfully.')
ELSE
  MESSAGE('Text-to-speech failed.')
END
```

### Notes
- Requires Microsoft Speech API (SAPI) 5.1 or higher.  
- SAPI 5.1 is included with Windows XP and Windows Vista.  
- For Windows 2000, SAPI 5.1 must be downloaded and installed separately.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
