# Custom Message Windows

If your application uses **its own message WINDOW** or a third-party message procedure that is not dimmed automatically, cdWindowDim can dim the parent behind it.

**Normal Clarion `MESSAGE()`, `STOP()` and `HALT()` calls already work with automatic message dimming, which is enabled by default.** Supported CapeSoft MessageBox windows work automatically too; they do not require this extension.

## Add the Custom Message Window extension

1. In the APP containing the message window procedure, add **cdWindowDim - Global Settings** to Global Extensions if it is not already installed.
2. Open the **actual message window procedure** in Clarion. Under its procedure extensions, add **cdWindowDim - Custom Message Window**.
3. Generate and compile the APP. The extension does the necessary registration and restoration automatically for ABC and Legacy procedures.
4. Open the message from another window to check that the parent dims while the message is displayed and restores when you close it.

Add the extension to each different custom message window procedure you want covered. **Do not add it to every calling browse or form.** You can leave the global automatic-message setting on (recommended) or turn it off; the custom extension works either way. If you use CapeSoft MessageBox, try the normal automatic setting first. The extension can also be used with a CapeSoft message window when you have access to that procedure.

## Single EXE and multi-DLL applications

- **Single EXE:** Add the global extension and the Custom Message Window procedure extension in the same APP.
- **Multi-DLL:** Add the global extension and the Custom Message Window procedure extension to the APP that **contains the actual message WINDOW procedure**. APPs that merely call that procedure do not need the custom extension for that call.
- **Optional black/blue/red message procedures:** These are a different option. Import **`ImportcdDimMessage`** into a single EXE or the Data DLL that owns them. Import **`ImportcdDimMessageDec`** into each other APP that calls them. The first utility supplies procedures; the second supplies calling declarations. Do not import both into the same APP. See [Custom Colored Messages](custom-messages.md) for details.

## Hand-coded registration (optional)

Use the extension above whenever possible. If you need to insert the calls yourself, add these declarations to the Clarion MAP and link the matching product DLL/LIB:

```clarion
MODULE('CDWindowDim.dll')
  CDRegisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDRegisterMessageWindow')
  CDUnregisterMessageWindow(LONG),SIGNED,PROC,PASCAL,RAW,NAME('CDUnregisterMessageWindow')
END
```

In the message **WINDOW** procedure, after the window opens:

```clarion
IF 0{PROP:Handle} <> 0
  CDRegisterMessageWindow(0{PROP:Handle})
END
```

When that message window closes, before the window is destroyed:

```clarion
CDUnregisterMessageWindow(0{PROP:Handle})
```

**Tip:** Open the supplied demo application in Clarion and select **Source** to see the generated registration and unregistration calls in their proper locations.

## If the parent does not dim

- Confirm the extension is on the **message window procedure** itself, and that you regenerated and rebuilt the APP.
- Confirm the message opens from an owning application window; an unowned message may not have a parent to dim.
- Confirm the **global template is enabled**, runtime dimming is on, and the EXE has the required Windows compatibility manifest.
- If the third-party window cannot be edited, rely on automatic detection when supported or use a message procedure you control.

For ordinary `MESSAGE()` calls use [Automatic Message Dimming](automatic-messages.md). See the [DLL Function Reference](../functions/index.md) if you need direct calls.
