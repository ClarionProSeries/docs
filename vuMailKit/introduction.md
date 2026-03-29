---
title: "vuMailKit - Introduction"
summary: "vuMailKit is a Clarion email toolkit designed to provide modern send, receive, autodetect, OAuth, and profile-management capabilities through a single deployable DLL."
description: "vuMailKit is a Clarion email toolkit designed to provide modern send, receive, autodetect, OAuth, and profile-management capabilities through a single deployable DLL."
keywords: ["introduction", "documentation", "vuMailKit", "Clarion", "email", "OAuth", "SMTP", "POP3"]
page_type: "overview"
last_updated: "2026-03-26"
---

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# vuMailKit - Introduction

**vuMailKit** is a Clarion email toolkit designed to provide modern send, receive, autodetect, OAuth, and profile-management capabilities through a single deployable DLL.

It is designed as the modern successor to **vuMail** while still preserving the practical compatibility and developer workflow that existing Clarion applications expect.

## Basic edition highlights

- Single-DLL runtime deployment
- SMTP send support with modern TLS handling
- POP3 receive and message extraction support
- Account autodetect and deep-scan support for server settings
- Managed profile save and reuse
- OAuth support for supported providers
- Clarion-oriented template integration and examples

## Getting started

If you are new to vuMailKit, begin with the [Installation](install.md) page.

Then review:

- [Template Registration](template-registration.md)
- [Template Usage](template-usage.md)
- [Deployment](deployment.md)
- [All functions](functions/index.md)

## Important note about licensing

vuMailKit uses a startup licensing call. In normal use, the application should call `vuMailKitInitialize()` once during startup before invoking the wizard, autodetect, send, or profile functions.  The code for this is handled automatically by the template but if you are hand-coding you will need to replicate that part of the code in your app.

## About the function reference

The function reference is organized so that active supported functions remain in the public documentation, while internal or obsolete functions are not advertised as part of the normal developer-facing surface.

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)
