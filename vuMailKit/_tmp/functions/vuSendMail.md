
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSendMail()

```Prototype
vuSendMail(*CSTRING InFrom,*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttach),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMail')
```

## Purpose

Validates and queues one outbound email record to the SMTP worker queue.

## Parameters

| Parameter | Type | Description |
|---|---|---|
| InFrom | *CSTRING | Optional sender display name override. Leave blank to use the display name and email address saved in the active profile. See From behavior below. |
| InTo | *CSTRING | Recipient email address list. |
| InCC | *CSTRING | CC address list. |
| InBCC | *CSTRING | BCC address list. |
| InSubject | *CSTRING | Message subject text. |
| InBody | *CSTRING | Message body content. May be plain text, HTML text, or a file name/path pointing to a text or HTML file to use as the body. If HTML is detected, vuMailKit sends a multipart message containing both plain text and HTML content. |
| InAttach | *CSTRING | Attachment file path. Attachments are sent as normal file attachments. Image files may also be embedded inline when referenced from HTML or when using the legacy _embed attachments_ tag. |

## Return value / error codes

- 1: Message accepted/queued.
- 0: Queueing failed.
- -2: Invalid From or To address format.

## HTML body note for Clarion developers

InBody may contain plain text, HTML text, or the path to a text or HTML file.

For larger HTML messages, the easiest approach is usually to create the HTML in an external editor and pass the file name in InBody. This avoids Clarion source-string escaping and makes the HTML easier to maintain. It also makes it easy to edit the file, save it, and send again without recompiling.

If you hard-code HTML directly in a Clarion string literal, literal < characters must be written as <<.

For example, this Clarion source:

```clarion
cBody = '<<html><<body><<p>Hello<</p><</body><</html>'
```

produces this runtime HTML:

```html
<html><body><p>Hello</p></body></html>
```

If your HTML comes from an external file, database, editor control, or other runtime source, this Clarion source escaping rule does not apply to that external content.

## Example (Clarion) - plain text

```clarion
MAP
  MODULE('vuMail.dll')
    vuSendMail(*CSTRING InFrom,*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttach),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMail')
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

cFrom = ''
cTo = 'recipient@example.com'
cCC = ''
cBCC = ''
cSubj = 'Queue test'
cBody = 'Hello from vuSendMail'
cAttach = ''

rc = vuSendMail(cFrom, cTo, cCC, cBCC, cSubj, cBody, cAttach)
MESSAGE('vuSendMail rc=' & rc)
```

## Example (Clarion) - HTML body from an external file

```clarion
MAP
  MODULE('vuMail.dll')
    vuSendMail(*CSTRING InFrom,*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttach),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMail')
  END
END

rc      LONG
cFrom   CSTRING(256)
cTo     CSTRING(256)
cCC     CSTRING(256)
cBCC    CSTRING(256)
cSubj   CSTRING(256)
cBody   CSTRING(260)
cAttach CSTRING(260)

cFrom = ''
cTo = 'recipient@example.com'
cCC = ''
cBCC = ''
cSubj = 'vuMailKit external body test'
cBody = '.\emailbody.txt'
cAttach = ''

rc = vuSendMail(cFrom, cTo, cCC, cBCC, cSubj, cBody, cAttach)
MESSAGE('vuSendMail rc=' & rc)
```

If the external file contains HTML, vuMailKit detects that and sends it as HTML. This is often the easiest way to work with larger or AI-generated HTML messages.

A fully qualified path also works:

```clarion
cBody = 'C:\MyFolder\emailbody.txt'
```

## Example (Clarion) - HTML embedded directly in Clarion source

```clarion
MAP
  MODULE('vuMail.dll')
    vuSendMail(*CSTRING InFrom,*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttach),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMail')
  END
END

rc      LONG
cFrom   CSTRING(256)
cTo     CSTRING(256)
cCC     CSTRING(256)
cBCC    CSTRING(256)
cSubj   CSTRING(256)
cBody   CSTRING(4096)
cAttach CSTRING(260)

cFrom = ''
cTo = 'recipient@example.com'
cCC = ''
cBCC = ''
cSubj = 'HTML test'
cBody = '<<html><<body><<h2>vuMailKit HTML Test<</h2><<p>This message was sent as <strong>HTML<</strong>.<</p><<p>If your mail client supports HTML, this text should be formatted.<</p><</body><</html>'
cAttach = ''

rc = vuSendMail(cFrom, cTo, cCC, cBCC, cSubj, cBody, cAttach)
MESSAGE('vuSendMail rc=' & rc)
```

## Example (Clarion) - HTML email with inline image

```clarion
MAP
  MODULE('vuMail.dll')
    vuSendMail(*CSTRING InFrom,*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttach),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMail')
  END
END

rc      LONG
cFrom   CSTRING(256)
cTo     CSTRING(256)
cCC     CSTRING(256)
cBCC    CSTRING(256)
cSubj   CSTRING(256)
cBody   CSTRING(4096)
cAttach CSTRING(260)

cFrom = ''
cTo = 'recipient@example.com'
cCC = ''
cBCC = ''
cSubj = 'Inline image test'
cBody = '<<html><<body><<h2>Inline Image Test<</h2><<p>This should show text above the image.<</p><<p><<img src="C:\Images\Test.jpg"><</p><<p><<strong>This line should be bold.<</strong><</p><</body><</html>'
cAttach = ''

rc = vuSendMail(cFrom, cTo, cCC, cBCC, cSubj, cBody, cAttach)
MESSAGE('vuSendMail rc=' & rc)
```

## Example (Clarion) - legacy _embed attachments_ tag

```clarion
MAP
  MODULE('vuMail.dll')
    vuSendMail(*CSTRING InFrom,*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttach),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMail')
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

cFrom = ''
cTo = 'recipient@example.com'
cCC = ''
cBCC = ''
cSubj = 'Embedded attachment image test'
cBody = '_embed attachments width=300 height=150_'
cAttach = 'C:\Images\Test.jpg'

rc = vuSendMail(cFrom, cTo, cCC, cBCC, cSubj, cBody, cAttach)
MESSAGE('vuSendMail rc=' & rc)
```

## Example (Clarion) - regular file attachment

```clarion
MAP
  MODULE('vuMail.dll')
    vuSendMail(*CSTRING InFrom,*CSTRING InTo,*CSTRING InCC,*CSTRING InBCC,*CSTRING InSubject,*CSTRING InBody,*CSTRING InAttach),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMail')
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

cFrom = ''
cTo = 'recipient@example.com'
cCC = ''
cBCC = ''
cSubj = 'Attachment test'
cBody = 'This message includes a normal file attachment.'
cAttach = 'C:\Docs\Report.pdf'

rc = vuSendMail(cFrom, cTo, cCC, cBCC, cSubj, cBody, cAttach)
MESSAGE('vuSendMail rc=' & rc)
```

## Notes

- vuSendMail() returns after enqueue. Delivery continues in background.
- Use vuMailStatus() and vuMailLastError() to inspect asynchronous send results.
- When HTML is detected, vuMailKit generates a multipart email with both plain text and HTML content.
- If inline images are present, the HTML portion is sent as related MIME content with CID references so the images can display inside the message body.

## From behavior

When the setup wizard is completed, the active profile stores both:

- the sender display name entered in the wizard
- the sender email address used to complete the wizard

If InFrom is blank, vuMailKit uses both of those stored values. In other words, the message is sent using the display name from the profile together with the sender email address from the profile.

If you want to change only the visible display name for a message, pass a plain text string in InFrom, such as:

```clarion
cFrom = 'Support Department'
```

vuMailKit then uses that display name together with the sender email address from the active stored profile.

## Important sender limitation

InFrom is **not** intended to let you switch to a different sender email address on the fly.

Do not rely on InFrom to send as another full mailbox or another email address. With stored profiles, and especially with OAuth-backed sends, the authenticated account is expected to send using the email address saved in the active profile. Attempting to substitute a different sender email address may be ignored or rejected by the provider.

The practical rule is simple:

- Leave InFrom blank to use the stored profile display name and email address.
- Put a plain display-name string in InFrom if you want to change only the visible sender name for that message.

## See also

- vuSendMailWait()
- vuSendMailFromFile()
- Planned practical examples page for larger end-to-end send samples

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)