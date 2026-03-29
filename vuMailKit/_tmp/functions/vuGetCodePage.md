
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuGetCodePage()

```Prototype
vuGetCodePage(),CSTRING,PROC,PASCAL,RAW,NAME('vuGetCodePage')
```


This legacy function is declared as returning `CSTRING` in Clarion to preserve original vuMail template behavior. Under the hood, the export returns a pointer to a null-terminated C string buffer, and Clarion consumes it directly as text, as shown in the examples below.
## Description
This is the legacy vuMail function name. It behaves the same as `vuGlobalsGetCodePage()`.

## Return value / error codes
- Returns the current CodePage text using the original vuMail legacy text-return style.
- In Clarion, this function can be used directly in text expressions such as `MESSAGE()` and string assignment.
- If no text is available, the result may be empty.

## Example (Clarion)
```clarion
MESSAGE('The current vuMail Code Page is: ' & vuGetCodePage())
```

## Notes
- Legacy compatibility exception: in the original PowerBasic vuMail code these functions exported a numeric `DWORD` that was actually the address of an internal C string buffer. Clarion can consume that value directly in string expressions, which is why the legacy examples use assignment and `MESSAGE()` style calls because the Clarion prototype is declared as `CSTRING`.
- Preferred function name: [vuGlobalsGetCodePage()](vuGlobalsGetCodePage.md).
- This is a legacy compatibility exception. New text-return APIs should use caller-owned `*CSTRING` output buffers.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)