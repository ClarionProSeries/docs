[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)

# Dimming a Window Started with START

A window opened with Clarion's START function runs on a separate thread. The calling procedure continues immediately, even while the new window stays open. To keep the original window dimmed until the started window closes, use the sequence below.

The sequence is straightforward:

**Dim the parent, START the child, register the started window, and run the closing code when the child closes.**

Do not restore the parent immediately after START. The started window is still open.

## Using code templates

### Step 1. Set up the parent window

In the parent procedure, create a local LONG variable named **StartedThread** (or another name of your choice).

If you use a button to launch the child, you can configure its normal Clarion action to **Call a Procedure** with **Initiate Thread** selected. Choose the child procedure and set the **Return Thread Variable** to **StartedThread**.

In that button's **Accepted** embeds, arrange the operations in this order:

1. **cdWindowDim - Dim Parent Window**, before Clarion's START operation.
2. The normal Clarion code that launches the child using START and puts the returned thread number in **StartedThread**.
3. **cdWindowDim - Register Started Procedure**, immediately after START, using **StartedThread** as the return-thread variable.

Verify the order in generated source. It should resemble:

```clarion
CDDimWindowEx(0{PROP:Handle},90,0,0,0)
StartedThread = START(MyChildWindow,25000)
CDWindowRegisterChild(0{PROP:Handle},StartedThread)
```

Use your real child procedure name. The code templates generate the two cdWindowDim calls; the START statement comes from Clarion. The default appearance is black with strength 90, but the Dim Parent Window template also allows a local color and strength override.

### Step 2. Handle the started window closing

Open the **started child procedure**. Insert **cdWindowDim - Started Child Closing** in its **Close Window** embed. Use this location for both ABC and Legacy windows.

The generated call is:

```clarion
CDWindowClosing(THREAD())
```

The **Close Window** embed handles window closure whether the user exits through a button or the title-bar X. Do not place this only in a button's Accepted embed.

When the child closes, cdWindowDim releases that child's dimming request. If other children are still open on the same parent, it remains dimmed until the last one closes.

### Step 3. Try the sequence

Open the parent, START the child, and close the child using its title-bar X. The parent should return to its usual appearance. Repeat using the child's normal Close button. Then try opening more than one started child from the same parent and closing them in a different order.

**Do not insert Restore Parent Window immediately after START.** That is the recipe for a synchronous procedure call, not a START-launched child. For this sequence, **Started Child Closing** performs the matching release.

## Writing the same calls by hand

In a hand-coded application, declare the corresponding DLL functions in the MAP and link CDWindowDim.lib as shown in [Hand-Coded Integration](../hand-coded-integration.md). With the declarations in place, the parent's procedure can perform the same sequence:

```clarion
! Parent procedure local DATA
StartedThread LONG
DimResult     LONG
RegisterResult LONG

! Parent button's Accepted code
DimResult = CDDimWindow(0{PROP:Handle},90)
StartedThread = START(MyChildWindow,25000)
RegisterResult = CDWindowRegisterChild(0{PROP:Handle},StartedThread)
```

Use the same **StartedThread** variable for the START result and the registration call. Place the registration call immediately after START.

In the started child's **Close Window** embed, call:

```clarion
CloseResult = CDWindowClosing(THREAD())
```

For this example, **CloseResult** is another local LONG variable if you want to inspect the result. You may also call the function without capturing its return value. 

For custom color, use CDDimWindowEx instead of CDDimWindow. See [DLL Function Reference](../functions/index.md).

## Important rules

- Insert **Register Started Procedure** in the parent and **Started Child Closing** in the child.
- Run **Started Child Closing** once for each child closure.
- Do not add a separate Restore for a registered started child.
- A START-launched procedure is **not automatically tracked** merely because the global template is installed.
- If you disable a START sequence for testing, disable the matching Dim and Register inserts together. Keep the child's closing template enabled if the child participates in any other active sequence.

This workflow has been tested with multiple started windows, including a parent that also has a synchronous child open. For a different application arrangement, especially a child that closes immediately or is owned by another APP, confirm that the closing call is actually generated and executed.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Using the Template](../template-usage.md) | [Task Guides](index.md) | [What's New](../whatsnew.md)
