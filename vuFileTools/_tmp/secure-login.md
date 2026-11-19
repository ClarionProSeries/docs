
[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# Secure Login Window

vuFileTools includes an importable Clarion **Secure Login** window with managed login-name and password controls and automatic show/hide eye buttons. The template's **Import vuFileTools Secure Login** utility imports `vuFileToolsSecureLogin.txa` from `accessory\libsrc\win` (repository `libsrc` folder).

## Important change for existing Secure Login users (Build 210)

In Build 210, the three **vuFileTools** password-control functions were permanently renamed to prevent conflicting declarations when vuFileTools and vuMailKit are installed in the same Clarion application:

| Previous vuFileTools name | Build 210 name |
|---|---|
| `vuPasswordInit` | `vuFTPasswordInit` |
| `vuPasswordToggle` | `vuFTPasswordToggle` |
| `vuPasswordCleanup` | `vuFTPasswordCleanup` |

**The old three names are no longer exported by the Build 210 vuFT5.dll.** The Clarion global extension and the supplied TXA use the new names. vuMailKit and its Setup Wizard are unchanged.

### New Secure Login window

1. Install the Build 210 **DLL, matching LIB, template and TXA** for the Clarion version you use.
2. Ensure your application has the updated **vuFileTools global extension**.
3. Use the template utility to import the updated `vuFileToolsSecureLogin.txa` as a new window.
4. Generate and build the application, then test masked entry, the eye buttons, pasting and cleanup.

### Previously imported Secure Login window

An already imported procedure is a copy of the TXA. Installing a new TXA does **not** automatically update the existing procedure's embeds or preserve its customizations.

- **If your procedure is unmodified:** back up your APP and its TXA export, then import a fresh copy of the Build 210 window. Review the procedure names and any callers before replacing or removing the old procedure. Test after rebuilding.
- **If your procedure is customized:** keep your existing procedure and change any calls to `vuPasswordInit`, `vuPasswordToggle` and `vuPasswordCleanup` in its embeds to `vuFTPasswordInit`, `vuFTPasswordToggle` and `vuFTPasswordCleanup`. Do not overwrite the window blindly; review generated MAP and embedded/manual declarations for stale names.
- **If you call these functions elsewhere:** update those calls and any hand-written MAP declarations to the new names. Regenerate and rebuild using the matching Build 210 LIB and DLL.

**Deployment warning:** Already-compiled applications that import the old vuFileTools password entry points will not be compatible with the new DLL until the application is rebuilt. Do not swap in the new DLL under an old executable using these functions.

Applications that do not call the password-control functions generally do not need application source changes. vuMailKit requires no changes.

## Relevant functions

- [vuFTPasswordInit](functions/vuFTPasswordInit.md): attach managed behavior to an ENTRY control
- [vuFTPasswordToggle](functions/vuFTPasswordToggle.md): programmatically show or hide a managed field
- [vuFTPasswordCleanup](functions/vuFTPasswordCleanup.md): detach and release resources

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)