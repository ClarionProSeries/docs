---
title: "vuMailKit - Template Registration"
summary: "When you run the installer, it can automatically register the vuMailKit template during installation."
description: "When you run the installer, it can automatically register the vuMailKit template during installation. If you need to register it manually, follow these steps."
keywords: ["documentation", "template", "register", "registration", "Clarion", "vuMailKit"]
page_type: "overview"
last_updated: "2026-03-30"
---

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md) | [OAuth](oauth/index.md)

# vuMailKit - Template Registration

When you run the installer, it can automatically register the template during installation.

If you decide not to allow that, or if you need to re-register the template later, follow these steps:

1. In the Clarion IDE, click **Tools** > **Edit Template Registry**.
2. In the **Template Registry** window, click **Register**.
3. In the file picker, navigate to:
   `C:\ClarionXX\accessory\template\win\`
4. Select **vuMailKit.tpl** and click **Open**.
5. Confirm that **vuMailKit** appears in the list of registered templates and click **OK**.

If you install or upgrade to a new version of Clarion, you may need to re-register **vuMailKit** in that version.

## OAuth note

If your application will use Microsoft or Google / Gmail OAuth sign-in, the provider credentials are entered later in the **vuMailKit global template** on the **OAuth Settings** tab.

For step-by-step instructions on obtaining those provider credentials and entering them into the template in the correct quoted format, see:

- [OAuth Setup](oauth/index.md)
- [Microsoft OAuth Setup](oauth/microsoft.md)
- [Google / Gmail OAuth Setup](oauth/google-gmail.md)

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md) | [OAuth](oauth/index.md)