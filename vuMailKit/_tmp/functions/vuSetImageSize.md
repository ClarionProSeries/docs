
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSetImageSize()

```Prototype
vuSetImageSize(LONG InWidth,LONG InHeight),LONG,PROC,PASCAL,RAW,NAME('vuSetImageSize')
```

## Purpose

Sets legacy runtime image-size hints for compatibility with older vuMail workflows.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| InWidth | LONG | Width hint value. Pass 0 to leave the current stored width hint unchanged. |
| InHeight | LONG | Height hint value. Pass 0 to leave the current stored height hint unchanged. |

## Return value / error codes

- 1: Success.
- 0: Failed; vuMailLastError() contains details.

## Notes

- This function is implemented only for legacy compatibility.
- The stored values are runtime-only hints and are not persisted.
- The original PowerBASIC behavior stored PB-style STR$ text for nonzero values.
- No preferred modern replacement is currently documented.

## Example (Clarion)

```clarion
MAP
  MODULE('vuMailKit.dll')
    vuSetImageSize(LONG InWidth,LONG InHeight),LONG,PROC,PASCAL,RAW,NAME('vuSetImageSize')
  END
END

rc LONG

rc = vuSetImageSize(640, 480)
IF rc <> 1
  MESSAGE('vuSetImageSize failed: ' & vuMailLastError())
END
```

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)