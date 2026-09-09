
[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)

# Mailslots in vuFileTools

Mailslots provide a simple way for one Windows application to send messages or commands to another application running on the same computer.

They are especially useful when one program launches or works with a separate helper program and needs an easy way to communicate with it.

For example, one application could use mailslots to tell another application to:

- Add or update information
- Refresh its display
- Move or change a window
- Start an operation
- Clear existing information
- Shut down
- Perform any other command your applications agree upon

The vuFileTools demo uses mailslots to communicate between the main demo and a separate auxiliary application.

## How It Works

Mailslot communication is simple.

The receiving application creates a named mailslot:

```Clarion
MailBox = 'MyApplication'

IF vuMailSlotCreate(MailBox) = 0
  MESSAGE('Unable to create mailslot')
END
```

Another application can then send information to that mailslot:

```Clarion
MailBox = 'MyApplication'
MailBuffer = 'Refresh'

vuMailSlotSend(MailBox, MailBuffer, LEN(MailBuffer), 1)
```

The receiving application checks periodically for new messages:

```Clarion
GotMail = vuMailSlotCheckEx(MailBox, MailBuffer, SIZE(MailBuffer))

IF GotMail > 0
  ! Process the information in MailBuffer
END
```

When the receiving application shuts down, it destroys the mailslot:

```Clarion
vuMailSlotDestroy(MailBox)
```

That is all that is required for basic communication between two applications.

## Sending More Than Simple Commands

A mailslot message does not have to contain only a word such as Refresh or Close.

You can send a block of information that both applications understand.

For example, the vuFileTools demo sends information containing:

- A command
- Quantity
- Description
- Cost
- Additional string values

The receiving application reads the message and decides what action to perform based on the command.

This makes mailslots useful for lightweight communication between related programs without requiring temporary files, registry entries, sockets, or a database connection simply to pass a message.

## Mailslot Functions

| Function | Purpose |
|----------|---------|
| [vuMailSlotCreate](functions/vuMailSlotCreate.md) | Creates a mailslot that your application can receive messages through |
| [vuMailSlotSend](functions/vuMailSlotSend.md) | Sends a message to another application's mailslot |
| [vuMailSlotCheck](functions/vuMailSlotCheck.md) | Checks for and receives the next available message |
| [vuMailSlotCheckEx](functions/vuMailSlotCheckEx.md) | Preferred receive function for new applications because the destination buffer size is supplied |
| [vuMailSlotDestroy](functions/vuMailSlotDestroy.md) | Closes a specific mailslot |
| [vuMailSlotDestroyAll](functions/vuMailSlotDestroyAll.md) | Closes all mailslots created by the application |
| [vuMailSlotLastError](functions/vuMailSlotLastError.md) | Returns additional Windows error information when a mailslot operation fails |
| [vuMailSlotLastErrorText](functions/vuMailSlotLastErrorText.md) | Returns a readable description of the last Windows mailslot error |

For new receiver code, vuMailSlotCheckEx is recommended because it allows vuFileTools to verify that the incoming message will fit in the supplied buffer.

## Checking for Messages

A receiving application will normally check its mailslot periodically, such as from a Clarion TIMER event.

```Clarion
GotMail = vuMailSlotCheckEx(MailBox, MailBuffer, SIZE(MailBuffer))

IF GotMail > 0
  ! A message was received
END
```

Test for GotMail > 0 before processing the message. A negative return value indicates an error rather than a received message.

If you need more information about an error, vuMailSlotLastError and vuMailSlotLastErrorText provide the Windows error number and a readable description.

## Local and Remote Mailslots

vuFileTools mailslots are most useful for communication between applications running on the same Windows computer.

The final parameter of vuMailSlotSend determines whether the message is sent locally or through the older Windows remote-mailslot mechanism.

For normal same-computer communication, use:

```Clarion
vuMailSlotSend(MailBox, MailBuffer, LEN(MailBuffer), 1)
```

Microsoft has deprecated the Windows Remote Mailslot protocol, and it is disabled by default on current versions of Windows 11.

For that reason, remote mailslot support remains available in vuFileTools for compatibility with older applications, but it is not recommended when designing new communication between computers.

For communication between applications on the same PC, local mailslots remain a simple and useful option.

## Build 208

Build 208 fixes a long-standing mailslot bug that could cause messages between applications to be missed or processed incorrectly.

The mailslot functions have also been updated with improved error reporting and the new buffer-aware vuMailSlotCheckEx function.

Existing applications can continue using the original mailslot functions without changing their calling conventions.

[Home](index.md) | [All functions](functions/index.md) | [Categories](categories/index.md)