
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuMailKitInitialize()

## Purpose

Initialize vuMailKit licensing for the current process.

Call this once at EXE startup and pass the license string generated for the developer. This call enables the licensed feature set for the running process, including Basic, Pro, Back Office, and DEMO licenses.

In a normal Clarion application, the vuMailKit global template generates this startup call for you.

## Clarion prototype

**Prototype:** vuMailKitInitialize(*CSTRING LicenseString), SIGNED, PROC, PASCAL, RAW, NAME('vuMailKitInitialize')

## Parameters

| Parameter | Type | Description | Expected values / range |
|---|---|---|---|
| LicenseString | *CSTRING | License string to apply for this process. | Pass the full license string supplied for the developer. A blank string leaves the process unlicensed. |

## Template license format

When you enter the license in the vuMailKit global template, enter it inside single quotes.

Example format:

```text
'license-string'
```

The template places that value into the generated startup code and passes it to `vuMailKitInitialize()`.

## When to call this

Call `vuMailKitInitialize()` once before setup, autodetect, profile, or send code can run.

Typical EXE startup pattern:

- copy the developer license string into a CSTRING
- call `vuMailKitInitialize(LicenseString)`
- continue into the rest of the application

In a Clarion multi-DLL application, initialize from the EXE app. The supporting DLL apps should not each try to own licensing startup.

## Return value from this function

| Value | Meaning |
|---|---|
| 0 | Initialization succeeded. |
| -9002 | License string was blank or invalid, initialization was attempted again with a different license string, or initialization failed unexpectedly. |
| -451 | vuMailKit detected conflicting .NET mail/runtime files in the application folder before license validation started. Move the Clarion EXE/runtime to a clean folder or remove the unrelated .NET mail/OAuth/runtime files from that folder. |

The -451 result is a deployment-folder conflict warning. It is not a virus warning, not a license failure, and not an SMTP, OAuth, Gmail, password, or mail-server authentication failure.

## Related licensing return codes from later calls

`vuMailKitInitialize()` itself does not return -9001 or -9003. Those are returned by later license-gated functions.

| Value | Where it appears | Meaning |
|---|---|---|
| -9001 | Later gated functions | vuMailKit licensing was never initialized. The EXE did not call `vuMailKitInitialize()` successfully before using send, setup, autodetect, or profile functions. |
| -9002 | `vuMailKitInitialize()` or later gated functions | The license string is invalid, initialization failed, or a prior initialization attempt failed. |
| -9003 | Later gated functions | The current license edition does not allow the requested feature. |

## Example (Clarion)

```clarion
LicenseString CSTRING(512)
Result        SIGNED

LicenseString = 'license-string'
Result = vuMailKitInitialize(LicenseString)

IF Result <> 0
  MESSAGE('vuMailKit startup failed: ' & vuMailLastError())
END
```

## Notes

- The global template is the preferred Clarion path because it generates the startup call and public prototypes.
- Basic features such as send, autodetect, and profile save are license-gated and should not rely on implicit startup behavior.
- A DEMO license should also be passed through this function.
- If initialization is skipped, later gated calls return -9001.
- If initialization fails because the license is bad, the initialize call returns -9002 and later gated calls also report -9002.
- If a lower edition calls a higher-tier feature, the later gated call returns -9003.
- For licensing failures, `vuMailLastError()` is updated with text that identifies the condition as a vuMailKit licensing/setup problem, not an SMTP, OAuth, Gmail, password, or mail-server authentication failure.
- For -451 deployment-folder conflicts, `vuMailLastError()` identifies conflicting .NET mail/runtime files in the application folder. Clean up the application folder before troubleshooting license or mail-provider settings.
- Use `vuMailKitGetLicenseInfo()` if you want a diagnostic text summary of the license state for a test harness, support screen, or About box.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)