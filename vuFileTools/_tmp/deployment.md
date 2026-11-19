
[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)


# vuFileTools - Deployment and Usage

vuFileTools includes a small DLL that performs all the API operations for you.

## Deployment

You must deploy **vuFT5.dll** with your application.

## Usage

Note: Most functions require parameters. You must create and use the proper data elements for each function. Although you can use a number directly in a function (where appropriate), you cannot use a literal string. Instead, assign the string value to a CSTRING variable and call the function with that variable.

Each function section in this documentation shows the calling prototype, the type of data expected as a parameter (if any), and the return value data type (if any).

Sample usage from Clarion is also provided.

The example applications included demonstrate practical use of the functions. Reviewing these examples often provides better context for understanding how the functions are used in real programs.

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)


## Window Dimming deployment

The new Window Dimming functions are part of **vuFT5.dll**, not the standalone cdWindowDim DLL. Use the matching `vuFT5.lib` when linking and deploy the corresponding `vuFT5.dll` alongside your application. **A Windows 8-or-later compatibility manifest in the EXE is required to display the overlay.** See [Window Dimming Troubleshooting](window-dimming/troubleshooting.md).

Optional [colored-message helpers](window-dimming/custom-messages.md) are compiled as Clarion procedures in one APP. A consuming EXE or DLL imports External declarations and links to the owner Data DLL. Deploy that Data DLL when used; it does not replace `vuFT5.dll`.

The optional [Custom Message Window extension](window-dimming/custom-message-windows.md) belongs on the actual message-window APP, including a Data DLL that implements that window. The separately imported Message Source/External TXAs and (for vuFileTools) Secure Login TXA install under `accessory\libsrc\win`, not `accessory\template\win`.