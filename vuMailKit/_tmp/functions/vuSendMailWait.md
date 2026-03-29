
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSendMailWait()

```Prototype
vuSendMailWait(*CSTRING InFrom,*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttach),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMailWait')
```

## Purpose
Queues one message (same input contract as `vuSendMail()`) and blocks until queue processing finishes.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InFrom | *CSTRING | Sender selector. You may pass a full mailbox, a plain email address, a display name only, or blank. See From selection rules below. |
| InTo | *CSTRING | Recipient email address list. |
| InCC | *CSTRING | CC address list. |
| InBCC | *CSTRING | BCC address list. |
| InSubject | *CSTRING | Message subject text. |
| InBody | *CSTRING | Message body text. |
| InAttach | *CSTRING | Attachment file path. |

## Return value / error codes
- `1`: Send completed successfully.
- `0`: Send did not complete successfully.
- `-2`: Invalid From or To address format.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSendMailWait(*CSTRING InFrom,*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttach),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMailWait')
  END
END

rc      LONG
cFrom   CSTRING(256)
cTo     CSTRING(256)
cCC     CSTRING(256)
cBCC    CSTRING(256)
cSubj   CSTRING(256)
cBody   CSTRING(1024)
cAttach CSTRING(260)

cFrom = 'sender@example.com'
cTo = 'recipient@example.com'
cCC = ''
cBCC = ''
cSubj = 'Wait test'
cBody = 'Send and wait'
cAttach = ''

rc = vuSendMailWait(cFrom, cTo, cCC, cBCC, cSubj, cBody, cAttach)
MESSAGE('vuSendMailWait rc=' & rc)
```

## Notes
- This call waits until the SMTP worker is idle and queue depth is zero.
- Check `vuMailLastError()` for verbose send diagnostics after a non-`1` result.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

## From display name behavior

- If a sender display name has been configured, vuMailKit formats the From header as `Display Name <email@address>`.
- If no display name exists, vuMailKit falls back to the plain email address.
- This preserves compatibility with legacy code that only supplies an address.


## From selection rules

vuSendMailWait() resolves the effective sender using these rules:

- If `xFrom` is blank, vuMailKit uses the saved/default profile sender.
- If `xFrom` contains a full mailbox like `Support <support@example.com>`, vuMailKit uses it as the sender for that message.
- If `xFrom` contains only a plain email address like `support@example.com`, vuMailKit uses that address with no display name override.
- If `xFrom` contains only a display name like `Technical Support`, vuMailKit combines that name with the saved/default profile sender address.

This keeps legacy behavior intact while allowing per-message display-name overrides when a stored profile sender already exists.

## Notes on OAuth/profile sends

- When you pass a different **email address** in `xFrom`, the provider/server may still reject that message if the authenticated account is not allowed to send as that address.
- A **display-name-only** override is safe because it keeps the stored profile sender address and changes only the visible name.