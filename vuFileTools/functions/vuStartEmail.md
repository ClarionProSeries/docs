[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)

# vuStartEmail(Address, Subject, Message)

```Prototype
vuStartEmail(*CSTRING,*CSTRING,*CSTRING), Signed
```

## Description
Uses the `MailTo` protocol to start the default desktop email client with the specified recipient, subject, and body text. The user must manually send the email.

### Parameters

| Parameter | Data Type    | Description                          |
|-----------|--------------|--------------------------------------|
| Address   | CSTRING(128) | Email address of the recipient.      |
| Subject   | CSTRING(128) | Subject line for the email.          |
| Message   | CSTRING(256) | Body text for the email.             |

### Returns
A LONG value:  
- 1 (True) on success  
- 0 (False) on failure  

### Example

```Clarion
xAddr = 'broe@valutilities.com'
xSub  = 'Order Status'
xMsg  = 'Can you confirm my order status?'

IF vuStartEmail(xAddr, xSub, xMsg)
  MESSAGE('Email client launched.')
ELSE
  MESSAGE('Failed to start email client.')
END
```

**Note:** Opens the default desktop email client registered for the `MailTo` protocol.  
- The email is pre-filled with the specified values, but the user must press **Send** manually.  
- May not work if no desktop email client is installed or associated with `MailTo`.

[Home](../index.md) | [All functions](../all-functions.md) | [Categories](../categories/index.md)