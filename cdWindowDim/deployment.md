---
title: "cdWindowDim - Deployment and Usage"
summary: "Deploy the cdWindowDim runtime DLL and provide a compatible application manifest."
description: "Deploy the cdWindowDim runtime DLL and provide a compatible application manifest."
keywords: ["cdWindowDim", "Clarion", "Code Drop", "window dimming"]
page_type: "guide"
last_updated: "2026-11-18"
---

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# cdWindowDim - Deployment and Usage

cdWindowDim includes a small DLL that supplies the window-dimming effect for your Clarion application.

## Deployment

You must deploy **CDWindowDim.dll** with your application.

The DLL should reside in the same folder as your application EXE file or in the application's normal DLL location.

## Windows Compatibility Manifest

Your EXE must include a Windows compatibility manifest declaring support for **Windows 8 or later**. This is required for the child-window dimming effect to display correctly. A generic application manifest without the appropriate compatibility entry is not sufficient.

If the program runs but the window does not dim, check the manifest first. See [Troubleshooting](troubleshooting.md).

## Usage

For normal Clarion applications, add **cdWindowDim - Global Settings** to the APP containing the procedures where you want dimming. The default appearance can be used without further customization.

You may also use the supplied code templates when you want to dim another window, including a window launched with START. Each task guide provides the necessary sequence and Clarion code examples.

For multi-DLL applications, see [Multi-DLL Applications](guides/multi-dll.md). For direct function calls, see [Hand-Coded Integration](hand-coded-integration.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

## Imported colored-message procedures

If you use the optional [colored-message Source TXA](guides/custom-messages.md), compile those Clarion procedures in exactly one APP and use External declarations in other APPs. Deploy the compiled Clarion Data DLL when applicable as well as `CDWindowDim.dll`. The product `.LIB` is needed for linking, not as a runtime DLL.

The optional [Custom Message Window extension](guides/custom-message-windows.md) belongs on the actual message-window APP, including a Data DLL that implements that window. The separately imported Message Source/External TXAs and (for vuFileTools) Secure Login TXA install under `accessory\libsrc\win`, not `accessory\template\win`.
