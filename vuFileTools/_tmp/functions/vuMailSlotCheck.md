
[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)

# vuMailSlotCheck(SlotName, dBuffer)

```Prototype
vuMailSlotCheck(*CSTRING,*CSTRING), Signed
```


## Description
Checks a registered mailslot and reads the next pending message into the caller-provided buffer.

### Parameters

| Parameter | Data Type | Description |
|-----------|-----------|-------------|
| SlotName | CSTRING | The logical name of the local mailslot to check. |
| dBuffer | CSTRING | Destination buffer for the next message. This legacy function does not know the actual capacity of the caller buffer. |

### Returns
- -1 if GetMailslotInfo fails. Use vuMailSlotLastError for the Windows error.  
- 0 if no message is pending, the slot is not registered, or the legacy ReadFile operation fails. A ReadFile failure leaves the Windows error available through vuMailSlotLastError.  
- A value greater than 0 is the number of messages that were pending before the current message was read.  

### Example

```Clarion
GotMail = vuMailSlotCheck(Mailbox, MailBuffer)
IF GotMail > 0
  MESSAGE('You have mail: ' & MailBuffer)
ELSIF GotMail < 0
  MESSAGE('Unable to check the mail slot.')
END
```

### Notes
- Build 208 corrects empty timer polling so an already-consumed message is not processed again on the next poll.  
- Do not use only IF GotMail when receiving. Test GotMail > 0 before processing the buffer.  
- For new code, use vuMailSlotCheckEx so vuFileTools can verify the destination buffer size before reading the message.  

[Home](../index.md) | [Mailslots Overview](../mailslots.md) | [All functions](index.md) | [Categories](../categories/index.md)