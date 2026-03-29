
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# About global memory

vuMailKit keeps a set of live runtime values in memory while the DLL is loaded. These values represent the current email configuration that send, receive, autodetect, and related functions use while your program is running.

This page explains the difference between:

- live in-memory settings
- legacy global save/load behavior
- managed profile behavior after a profile has been created

## The important idea

There are always live runtime values in memory while vuMailKit is active.

Setter functions change those live runtime values immediately.

Examples include functions that set values such as:

- SMTP server
- port
- user ID
- password
- log file
- reply-to
- security mode

If you change one of those values with a setter function, vuMailKit uses the new in-memory value right away for the current session.

## Two operating modes

vuMailKit can operate in two different configuration modes.

### 1. Legacy compatibility mode

This is the old vuMail style behavior.

In this mode:

- settings live in memory while the program is running
- `vuGlobalsLoad()` and `vuMailGetGlobals()` load saved global values
- `vuGlobalsSave()` and `vuMailSaveGlobals()` save current global values
- the legacy registry location may still be used

This mode is mainly relevant before a managed profile has ever been created.

### 2. Managed profile mode

This mode becomes the normal model once a managed profile exists.

In this mode:

- settings still live in memory while the program is running
- the active managed profile becomes the normal persistence source
- global load/save functions operate against the active managed profile
- the old vuMail registry location is no longer the primary place where settings are stored

This is the mode most developers and end users will be using after the setup wizard has successfully created and saved a profile.

## What happens before any profile exists

Before a managed profile has been created, vuMailKit can still behave like the older vuMail product.

That means:

- you can set values one at a time with setter functions
- you can load saved globals
- you can save globals
- legacy registry-backed behavior may still be used

Legacy registry location:

- `HKCU\SOFTWARE\vuPrograms\vuMail`

This exists for compatibility with older usage patterns and migration from the original vuMail model.

## What changes after a profile is created

Once a managed profile has been created, vuMailKit switches to managed-profile-based persistence for normal operation.

At that point:

- live runtime values still exist and are still used
- setter functions still work
- save/load behavior now targets the active managed profile
- the old `vuMail` registry location is no longer the normal primary store for email settings

Managed profile data is stored under Local AppData, including locations such as:

- `%LOCALAPPDATA%\vuPrograms\vuMailKit\profiles`
- `%LOCALAPPDATA%\vuPrograms\vuMailKit\secrets`
- `%LOCALAPPDATA%\vuPrograms\vuMailKit\state`

vuMailKit may also keep active-profile bookkeeping under a `vuMailKit` registry node, but the old `vuMail` registry key is not the normal primary store once managed profiles are in use.

## Do setter functions still matter after profiles exist

Yes.

That is important for legacy compatibility.

Even after a profile exists:

- setter functions still change the live runtime values for the current session
- send and receive operations use those current in-memory values
- if you then save globals, vuMailKit saves the current runtime values into the active managed profile

So setter functions remain valid. Their role is simply different once managed profiles are active.

### In legacy compatibility mode

Setter functions act like runtime changes to values that may later be saved through the legacy global save path.

### In managed profile mode

Setter functions act like runtime changes to the currently active profile context.

If you save after making those changes, the active managed profile is updated.

## Loading and saving globals

Preferred functions:

- `vuGlobalsLoad()`
- `vuGlobalsSave()`

Legacy names still supported:

- `vuMailGetGlobals()` is the legacy name for `vuGlobalsLoad()`
- `vuMailSaveGlobals()` is the legacy name for `vuGlobalsSave()`

### What these do before profiles exist

Before managed profiles exist:

- load pulls values into runtime memory from the legacy persistence model
- save writes current runtime values back to that legacy persistence model

### What these do after profiles exist

After managed profiles exist:

- load pulls values from the active managed profile into runtime memory
- save writes current runtime values back to the active managed profile

That means the function names stay the same, but the persistence target changes once the product has moved into managed profile mode.

## Immediate runtime behavior

vuMailKit always uses the live runtime values that are currently in memory.

That means:

- if you load settings, those values become active
- if you call setters, the new values become active
- if you save a profile through the wizard, that saved profile is applied to the active runtime
- if you restart the application, the active managed profile is loaded again for normal use

## Preventing password storage in the legacy model

Some developers do not want passwords written to the registry in the old compatibility model.

Use:

- `vuNoPasswordInRegistry(1)`

When this is enabled, the SMTP password may be omitted from legacy registry persistence.

Note:

- this setting is mainly relevant to the old legacy global save behavior
- once managed profiles are in normal use, profile and secret storage are handled through the managed-profile system instead of the old `vuMail` registry storage model

## Typical usage pattern today

For most new development using the setup wizard:

- let the wizard detect or collect the settings
- send a test message
- save the managed profile
- allow vuMailKit to use that managed profile as the normal persistence source

In that scenario, most developers do not need to manually set individual values unless they want to override something at runtime.

## Typical legacy-style pattern

If you are using vuMailKit in a more manual or legacy-compatible way, a common pattern is:

- load globals
- override one or more values with setter functions
- use the updated runtime values
- save globals if you want those changes persisted

Example (Clarion):

```Clarion
  RC = vuGlobalsLoad()

  RC = vuSmtpSetServer('smtp.example.com', 587)
  RC = vuLogSetFile(CLIP(PATH()) & '\mail.log')

  RC = vuNoPasswordInRegistry(1)

  RC = vuGlobalsSave()
```

## Summary

The easiest way to think about vuMailKit is this:

- runtime values always live in memory while the DLL is active
- setter functions always affect those live runtime values
- before profiles exist, global save/load can still use the old legacy model
- after a managed profile exists, global save/load normally target the active managed profile instead
- once the wizard has created and saved a profile, that managed profile becomes the normal configuration path going forward

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)