---
title: "vuMailSaveName"
summary: "Sets the .eml file name used when saving the next sent email."
description: "Sets the .eml file name used when saving the next sent email. [All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)"
keywords: ["vuMailKit", "vuMail", "vumailsavename"]
function_name: "vuMailSaveName"
category: "Logging"
version_added: "1.0"
last_updated: "2026-03-26"
---

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailSaveName(FileName)

```Prototype
vuMailSaveName(*CSTRING), LONG
```

## Purpose
Sets the file name or full path used if vuMailKit saves the next outbound message as an `.eml` file.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| FileName | *CSTRING | File name or full path to use for the next saved message. |

## Return value
- `0` = success.
- `-1` = `FileName` is blank.

## Notes
- This affects the next relevant send operation.
- Use this together with your normal logging or troubleshooting workflow when you want to keep an `.eml` copy of the generated outbound message.
- If you want the value preserved for later sessions, save globals or save the active profile after setting it.

## Clarion example
```clarion
RC        LONG
FileName  CSTRING(260)

FileName = 'OrderConfirmation.eml'
RC = vuMailSaveName(FileName)
```

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)
