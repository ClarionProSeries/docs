---
title: "OAuth Support"
summary: "OAuth setup and OAuth-related function links for vuMailKit."
description: "Bridge page for vuMailKit OAuth setup and OAuth-related function reference links."
keywords: ["vuMailKit", "OAuth", "Microsoft", "Google", "Gmail", "Clarion"]
page_type: "overview"
last_updated: "2026-06-24"
---

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)

# OAuth Support

vuMailKit supports OAuth sign-in for supported Microsoft and Google mail providers.

For normal Clarion applications, OAuth setup should not mean writing your own OAuth flow. Add and configure the vuMailKit global template, import the **vuMailKit Email Setup Wizard** with Clarion **CTRL+U**, compile the EXE, and run the wizard. The wizard handles provider detection, OAuth authorization when it is enabled and required, test send, and profile saving.

After the wizard saves the working profile, normal send functions can use the saved profile without hand-coded OAuth code.

For setup instructions, use the provider setup guides:

- [OAuth Setup Overview](oauth/index.md)
- [Microsoft OAuth Setup](oauth/microsoft.md)
- [Google / Gmail OAuth Setup](oauth/google-gmail.md)

For advanced/manual runtime helper functions, see:

- [OAuth Functions](functions-oauth.md)
- [OAuth Related functions](functions/index.md#oauth-related)

[Home](index.md) | [Browse by Category](categories/index.md) | [OAuth](oauth/index.md) | [All functions](functions/index.md)
