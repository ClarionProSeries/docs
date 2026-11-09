---
title: "Languages and Translation Files"
summary: "Select English or Spanish, or prepare a separate Clarion source file for another language."
description: "English, Spanish, and the provisional custom-language source convention in xSearch 5."
keywords: ["xSearch", "Clarion", "Clarion ProSeries", "tagging"]
page_type: "guide"
last_updated: "2026-11-07"
---

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)

# Languages and Translation Files

xSearch supports English and Spanish dialog text and allows another language through a separate Clarion translation-source file. The translation source is compiled into the application; it is **not a file loaded at runtime**.

## Choose English or Spanish

In **Global Extensions > xSearch > Language**, select **English** or **Spanish**. The supplied source files are xSearch_EN.trn (English reference phrases) and xSearch_ES.trn (Spanish translations).

## Add another language

To prepare a French translation, for example:

1. Copy xSearch_EN.trn to xSearch_FR.trn and place it on Clarion's source include path.
2. Rename the search translation group from XSRCHTRN to XSRCHTRNFR and the export group from XSEXPORTTRNEN to XSEXPORTTRNFR.
3. Keep the English source phrase in each first PSTRING; enter the translated phrase in its corresponding replacement PSTRING.
4. On the global xSearch **Language** tab, choose **Another language** and enter FR.
5. Compile the APP that uses those dialogs. Include the same language source in each APP that requires it.

Each language has its own .trn source file, keeping translations separate and easier to maintain. Clarion's translation class performs the phrase replacements using the compiled source data.

The original xSearch already used Clarion's translation infrastructure; version 5 adds a more convenient selection and per-language source organization.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md)
