[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)

# Automatic Window Dimming for Browses

**Add cdWindowDim - Global Settings and compile.** Supported ABC and Legacy browse procedures automatically dim the browse when an update form opens and restore it when the form closes.

1. Add **cdWindowDim - Global Settings** to the APP containing your browse.
2. Leave **Enable automatic browse dimming** selected.
3. Compile and open a browse's update form to see the standard effect.

For a browse that should not dim, open its **cdWindowDim - Window and Message Dimming** extension and select **Disable auto dimming for this procedure**.

To give one browse a different appearance, clear **Use global window appearance settings** on the procedure and choose the new strength and overlay color. The other browse procedures keep the global settings.

The browse dims; its update form remains clear. The automatic feature applies to supported browse/update calls. For another kind of window, use [Manual Dim and Restore](manual-dimming.md) or [Dimming a Window Started with START](started-children.md).

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)
