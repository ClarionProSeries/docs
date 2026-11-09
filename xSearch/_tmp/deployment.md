[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)

# xSearch - Deployment

xSearch is compiled into your Clarion application. **There is no separate xSearch runtime DLL to deploy.**

The tag and search icons used by the template are included in the compiled program rather than deployed as separate runtime files. They **must** be available at build time; see the complete icon and image inventory in [Installation](install.md).

For source and installer staging, icons live in `Source/Images` and must be installed to `accessory\images`. The legacy manifest file `Source/Lib/winxpmnf.res` is installed to `accessory\lib\win`; it is not an image and does not belong in `libsrc\win`.

Deploy your Clarion application normally, including any DLLs that are part of your own application. For persisted search/export preferences, set the global **INI file** to a writable filename or a runtime variable containing that filename. A bare name resolves beside the EXE; applications installed under Program Files will generally need a writable location elsewhere. See [INI Files and Remembered Settings](guides/ini-settings.md).

[Home](index.md) | [Getting Started](getting-started/index.md) | [Using the Template](template-usage.md) | [Task Guides](guides/index.md) | [What's New](whatsnew.md)
