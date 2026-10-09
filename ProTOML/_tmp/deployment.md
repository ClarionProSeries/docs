
[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)

# ProTOML - Deployment and Usage

ProTOML deploys as a single runtime DLL.

## Deployment

Deploy ProTOML.dll with your application.

The DLL should reside in the same folder as your application EXE file or in the application’s normal DLL location.

If your application was built with the Clarion template, the matching development files must also be installed on the development computer:

- ProTOML.lib for linking
- ProTOML.tpl for template integration
- ProTOML class support files in the Clarion libsrc folder

## Clarion multi-DLL applications

In a Clarion multi-DLL application, add the ProTOML global template to the EXE app.

The supporting DLL apps do not need their own ProTOML global extension. The EXE startup code initializes ProTOML for the process.

## Typical deployment checklist

- Install the ProTOML template into Clarion.
- Add the ProTOML global template to the EXE app.
- Enter the developer license in the global template.
- Build the application with ProTOML.lib.
- Deploy ProTOML.dll with the EXE.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)