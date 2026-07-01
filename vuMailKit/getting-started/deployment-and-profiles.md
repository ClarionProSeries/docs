---
title: "Deployment and Profiles"
summary: "Understand how vuMailKit profiles behave on individual machines and shared installs."
description: "Learn how profile storage affects sender identity on individual workstations, shared installs, and multi-user environments."
keywords: ["vuMailKit", "profiles", "deployment", "Clarion", "sender"]
page_type: "guide"
last_updated: "2026-04-27"
---

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Deployment and Profiles

A saved vuMailKit profile belongs to the environment where it was created and saved.

That affects how sender identity behaves in real deployments.

## One machine per sender

If you want each user to send from that user's own email address, each machine that runs the program should run the vuMailKit Email Setup Wizard and save its own working profile.

That gives each machine its own sender setup.

## Shared install or shared machine

If the application is installed on one shared machine and the [vuMailKit Email Setup Wizard](vumailkit-email-setup-wizard.md) is run there, the profile on that machine becomes the sender configuration that is used unless your application overrides sender details at send time.

That means a shared install may still work from multiple workstations, but the actual sender email address will normally come from the saved profile on the machine where the mail is being sent.

## Display name versus email address

The visible sender name can be changed from one email to the next.

For example, the saved profile may use your real email address, but your application can choose a display name such as LANSRAD Support for a particular message.

If you do not override it, vuMailKit uses the sender information stored in the profile.

## Recommendation

Decide early whether you want:

- one sender identity per workstation
- one shared sender identity
- a saved sender email address with per-message display-name changes

That will help you choose the right deployment approach.

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)
