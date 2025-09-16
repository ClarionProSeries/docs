[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuMailSlotCreate(SlotName)

```Prototype
vuMailSlotCreate(*CSTRING), Signed
```


## Description
Creates a mail slot in your application for receiving messages from other applications on the same PC or within the same domain.

### Parameters

| Parameter | Data Type    | Description                          |
|-----------|--------------|--------------------------------------|
| SlotName  | CSTRING(256) | The name of the mail slot to create. |

### Returns
A LONG value representing the number of current mail slots active on the PC if successful.  
Returns -1 on error.

### Example

```Clarion
SlotName = 'Transactions'
IF vuMailSlotCreate(SlotName) > 0
  MESSAGE('Mail slot created. There are now ' & vuMailSlotCreate(SlotName) & ' mail slots running on this PC.')
END
```

### Notes
- Mail slots provide a simple way to pass data between applications.  
- Messages sent to a mail slot can be broadcast to multiple recipients simultaneously.  
- You can send data as a group or queue, allowing any kind of structured data to be passed.  
- Mail slots use datagrams and do not guarantee delivery.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
