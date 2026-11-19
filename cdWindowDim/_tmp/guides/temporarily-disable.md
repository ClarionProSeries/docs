[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)

# Temporarily Disable Dimming

There are three different controls, depending on how much you want to turn off.

## Disable the Code Drop in an APP

1. Open **cdWindowDim - Global Settings** and select **Window Dimming**.
2. Check **Disable this template**.
3. Regenerate and rebuild the application.

All automatic and code-template dimming is disabled in that APP. To turn it back on, clear **Disable this template** and compile.

If the solution contains several APPs, each APP controls its own global extension.

## Disable one browse

Select **Disable auto dimming for this procedure** in that browse's extension. Other browse procedures remain unchanged.

## Disable one inserted code template

Open the code-template insert and select **Disable this code template**. For a manual synchronous sequence, disable the Dim and Restore inserts together. For START, disable the Dim and Register inserts together while leaving the START procedure call intact. Retain a child's closing notification if any other active sequence still needs it.

## Disable dimming while the program runs

Use **cdWindowDim - Disable Dimming** or **Enable Dimming**. These runtime code templates hide or show active effects without requiring the APP to be rebuilt. See [Runtime Dimming Controls](runtime-controls.md).

**Important:** The global disable switch affects template-generated code. It cannot remove handwritten function calls from programmer embeds.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)
