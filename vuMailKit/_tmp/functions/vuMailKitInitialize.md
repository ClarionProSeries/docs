
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuMailKitInitialize

## Purpose

Initialize vuMailKit licensing for the current process.

Call this once at EXE startup and pass the license string generated for the developer. This call enables the licensed feature set for the running process, including Basic, Pro, Back Office, and DEMO licenses.

## Export name

- `vuMailKitInitialize`

## Clarion prototype (Inside Global MAP)

- `vuMailKitInitialize(*CSTRING LicenseString),SIGNED,PROC,PASCAL,RAW,NAME('vuMailKitInitialize')`

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| LicenseString | *CSTRING | License string to apply for this process. | Pass the full license string supplied for the developer. A blank string leaves the process unlicensed. |

## When to call this

Call `vuMailKitInitialize()` once before `Main` or before you open windows that can use vuMailKit.

Typical EXE startup pattern:

- copy the developer license string into a `CSTRING`
- call `vuMailKitInitialize(LicenseString)`
- continue into the rest of the application

This is the normal pattern for:

- Basic
- Pro
- Back Office
- DEMO builds

## Return value

- `0` = initialization succeeded
- negative value = initialization failed

Common negative results:

- `-402` = license was invalid or initialization failed

## Clarion example

```clarion
LicenseString            CSTRING(512)
Result                   SIGNED

LicenseString = 'Charles-basic-16123'
Result = vuMailKitInitialize(LicenseString)
```

## Notes

- This call is now part of the normal startup flow for licensed vuMailKit use.
- Basic features such as send, autodetect, and profile save are license-gated and should not rely on implicit startup behavior.
- A DEMO license should also be passed through this function.
- If initialization fails, later gated calls can return licensing results such as `-401`, `-402`, or `-403`.
- Use `vuMailKitGetLicenseInfo()` if you want a diagnostic text summary of the license state for a test harness, support screen, or About box.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)