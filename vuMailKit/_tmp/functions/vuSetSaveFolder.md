
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

## Legacy behavior notes

- This is the old vuMail function name for the same runtime setting exposed as `vuGlobalsSetEmailFolder()`.
- Passing a blank folder turns off outgoing .eml copy saving.
- When the folder is set and valid, vuMailKit saves an outgoing .eml copy before the SMTP send attempt.
- vuMailKit attempts to create the folder when this function is called. The function still returns 1 after updating the runtime setting; if the folder remains invalid or cannot be created, the later send can fail with an email-save-folder error.
- If `vuSetMailLog()` / `vuLogSetFile()` is also configured, successful sent-mail CSV rows include the saved .eml path.
- The folder must be set before calling the send/test-send function whose .eml copy should be saved.

# vuSetSaveFolder()

## Clarion prototype

**Prototype:** vuSetSaveFolder(*CSTRING InFolder), SIGNED, PROC, PASCAL, RAW, NAME('vuSetSaveFolder')

## Description
This is the legacy vuMail function name.

Preferred function name:

- [vuGlobalsSetEmailFolder()](vuGlobalsSetEmailFolder.md)

This function is exported for backward compatibility and behaves identically to `vuGlobalsSetEmailFolder()`. It sets the outgoing .eml save folder used by normal sends, CSV-file sends, and setup/autodetect test-send messages.

## Example (Clarion)
```clarion
rc     LONG
folder CSTRING(260)

folder = 'C:\MyApp\SentMail'
rc = vuSetSaveFolder(folder)

IF rc = 1
  MESSAGE('Sent-mail save folder set to: ' & CLIP(folder))
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)