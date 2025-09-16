[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuMailSlotCheck(SlotName, dBuffer)

```Prototype
vuMailSlotCheck(*CSTRING,*CSTRING), Signed
```


## Description
Checks the specified mail slot for pending messages and places the next message (if any) into `dBuffer`.

### Parameters

| Parameter | Data Type    | Description                                                                 |
|-----------|--------------|-----------------------------------------------------------------------------|
| SlotName  | CSTRING(256) | The name of the mail slot to check.                                         |
| dBuffer   | CSTRING(512) | Buffer to receive the next message. Message size should not exceed 16K locally or 400 bytes across a domain. |

### Returns
- -1 on error  
- 0 if no messages are pending  
- Otherwise, the number of pending messages (including the one copied into `dBuffer`)  

### Example

```Clarion
SlotName = 'Transactions'
IF vuMailSlotCheck(SlotName, dBuffer) > 0
  MESSAGE('You have mail: ' & dBuffer)
END
```

### Notes
- The demo application included with vuFileTools shows a practical example of using mail slots for inter-process communication.  
- Mail slots can be used for one application to send data to and manipulate another application.  
- For more details, refer to the separate mail slots write-up included with the distribution package.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)
