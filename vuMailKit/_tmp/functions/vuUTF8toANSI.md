
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuUTF8toANSI()

```Prototype
vuUTF8toANSI(*CSTRING InUtf8Text),CSTRING,PROC,PASCAL,RAW,NAME('vuUTF8toANSI')
```


This legacy-style text helper is declared as returning `LONG` at the Clarion boundary. The numeric return value is actually the address of a null-terminated C string buffer and can be consumed directly in Clarion string expressions.
This legacy function is declared as returning `CSTRING` in Clarion to preserve original vuMail template behavior. Under the hood, the export returns a pointer to a null-terminated C string buffer, and Clarion consumes it directly as text, as shown in the examples below.

## Description
Converts UTF-8 text to ANSI using the original vuMail compatibility behavior.

## Parameters
- `xInput` (*CSTRING): UTF-8 input text.

## Return value / error codes
- Returns text using the original vuMail legacy text-return style.
- In Clarion, this function can be used directly in text expressions such as `MESSAGE()` and string assignment.
- If no text is available, the result may be empty.

## Example (Clarion)
```clarion
inBuf CSTRING(64)

inBuf = 'Cafe'
MESSAGE('ANSI text: ' & vuUTF8toANSI(inBuf))
```

## Notes
- Legacy compatibility exception: in the original PowerBasic vuMail code these functions exported a numeric `DWORD` that was actually the address of an internal C string buffer. Clarion can consume that value directly in string expressions, which is why the legacy examples use assignment and `MESSAGE()` style calls because the Clarion prototype is declared as `CSTRING`.
- New text-return APIs should use caller-owned `*CSTRING` output buffers.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)