
[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMailSlotCheckEx(SlotName, dBuffer, BufferSize)

```Prototype
vuMailSlotCheckEx(*CSTRING,*CSTRING,LONG), Signed
```


## Description
Checks a registered mailslot and safely reads the next pending message using an explicit destination buffer size.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| SlotName | CSTRING | The logical name of the local mailslot to check. |
| dBuffer | CSTRING | Destination buffer for the next message. |
| BufferSize | LONG | Total size of dBuffer. In Clarion, normally pass SIZE(dBuffer). |

### Returns
- -1 if the buffer size is invalid, the next message will not fit, or a Windows mailslot API call fails.  
- 0 if no message is pending or the slot is not registered.  
- A value greater than 0 is the number of messages that were pending before the current message was read.  

### Example

```Clarion
GotMail = vuMailSlotCheckEx(Mailbox, MailBuffer, SIZE(MailBuffer))
IF GotMail > 0
  MESSAGE('You have mail: ' & MailBuffer)
ELSIF GotMail < 0
  ErrNo = vuMailSlotLastError()
  vuMailSlotLastErrorText(ErrText, SIZE(ErrText))
  MESSAGE('Mail slot error ' & ErrNo & ': ' & ErrText)
END
```

### Notes
- Added in Build 208 and preferred for new receiver code.  
- The function leaves room for the terminating zero byte when checking whether the message will fit.  
- Build 208 checks the pending-message count before ReadFile so an empty timer poll cannot replay the previous buffer contents.  

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)