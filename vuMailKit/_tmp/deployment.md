
[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# vuMailKit - Deployment and Usage

vuMailKit deploys as a single runtime DLL for the Basic edition.

## Deployment

Deploy **vuMailKit.dll** with your application.

The Basic edition now uses a single-DLL deployment model.  This DLL should reside in the same folder as your application EXE file.

If your application was built with the Clarion template, also make sure the matching import library and template files were installed at development time:

- `vuMailKit.lib` for linking
- `vuMailKit.tpl` for the template integration

## Usage

Most vuMailKit functions require parameters. Create and use the proper Clarion data elements for each function. Numeric values can often be passed directly where appropriate, but string values should be placed into `CSTRING` variables before the function call.

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
 
The Demo app and Email Client Wizard are good examples of using the code.

## Licensing startup call

vuMailKit uses a startup initialization call for licensed use. In a normal Clarion application, call `vuMailKitInitialize()` once during EXE startup before you invoke the wizard, autodetect, or send functions.

The template-generated startup code is the normal way to handle this.

## Profile storage

Once a managed profile has been created, vuMailKit normally uses the managed profile store under Local AppData rather than the old legacy `vuMail` registry model.

## Typical deployment checklist

- Install the template into Clarion.
- Be sure to enter your license information in the global template.
- Build your application with the `vuMailKit.lib` import library.
- Deploy `vuMailKit.dll` with the EXE.
- Make sure your startup path calls `vuMailKitInitialize()`.
- If you use OAuth, configure the provider credentials in the template or application settings.

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)