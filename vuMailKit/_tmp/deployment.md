
[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# vuMailKit - Deployment and Usage

vuMailKit deploys as a single runtime DLL for the Basic edition.

## Deployment

Deploy **vuMailKit.dll** with your application.

The Basic edition uses a single-DLL deployment model. This DLL should reside in the same folder as your application EXE file.

If your application was built with the Clarion template, also make sure the matching import library and template files were installed at development time:

- vuMailKit.lib for linking
- vuMailKit.tpl for the template integration

## Licensing startup call

vuMailKit uses a startup initialization call for licensed use. In a normal Clarion application, the global template generates the call to [vuMailKitInitialize](functions/vuMailKitInitialize.md) for you.

Enter the developer license string in the template field inside single quotes:

```text
'license-string'
```

The initialization call must happen before the [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md), autodetect, profile, or send functions are used. If initialization is skipped, license-gated calls return -9001 and [vuMailLastError](functions/vuMailLastError.md) explains that the failure is a vuMailKit licensing/setup problem.

## Clarion multi-DLL applications

In a Clarion multi-DLL application, add the vuMailKit global template to the EXE app.

The supporting DLL apps do not need their own vuMailKit global extension. The EXE startup initializes the license for the process, and the runtime DLL is then available to send mail from code reached anywhere in the program.

## Usage

Most vuMailKit functions require parameters. Create and use the proper Clarion data elements for each function. Numeric values can often be passed directly where appropriate, but string values should be placed into CSTRING variables before the function call.

The function pages in this documentation show:

- the calling prototype
- the expected parameter types
- the return value type
- Clarion-oriented usage notes

The example applications and samples in the docs are also useful because they show real working flows such as:

- manual account setup
- autodetect and deep scan
- OAuth login for supported providers
- saving and reusing managed profiles
- sending test and production email

The Demo app and [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md) are good examples of using the code.

## Profile storage

Once a managed profile has been created, vuMailKit normally uses the managed profile store under Local AppData rather than the old legacy vuMail registry model.

## Typical deployment checklist

- Install the template into Clarion.
- Add the vuMailKit global template to the EXE app.
- Enter your license information in the global template, inside single quotes.
- If you use OAuth, configure the provider credentials in the template.
- Build your application with the vuMailKit.lib import library.
- Deploy vuMailKit.dll with the EXE.
- Run the compiled application and use the [vuMailKit Email Setup Wizard](getting-started/vumailkit-email-setup-wizard.md) to test and save a profile.

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)