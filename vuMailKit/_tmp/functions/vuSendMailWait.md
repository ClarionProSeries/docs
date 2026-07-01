
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSendMailWait()

## Clarion prototype

**Prototype:** vuSendMailWait(*CSTRING InFrom, *CSTRING InTo, *CSTRING InCC, *CSTRING InBCC, *CSTRING InSubject, *CSTRING InBody, *CSTRING InAttach), SIGNED, PROC, PASCAL, RAW, NAME('vuSendMailWait')

## Purpose
Queues one message (same input contract as vuSendMail()) and blocks until queue processing finishes.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InFrom | *CSTRING | Sender selector. You may pass a full mailbox, a plain email address, a display name only, or blank. See From selection rules below. |
| InTo | *CSTRING | Recipient email address list. |
| InCC | *CSTRING | CC address list. |
| InBCC | *CSTRING | BCC address list. |
| InSubject | *CSTRING | Message subject text. |
| InBody | *CSTRING | Message body text. |
| InAttach | *CSTRING | Optional attachment file path, comma/semicolon-separated attachment list, or wildcard mask. |

## Return value / error codes
| Value | Meaning |
|---|---|
| 1 | Send completed successfully. |
| 0 | Send did not complete successfully. |
| -2 | Invalid From or To address format. |
| -451 | vuMailKit detected conflicting .NET mail/runtime files in the application folder before the send operation. |
| -9001 | vuMailKit licensing was not initialized. |
| -9002 | license string is invalid or initialization failed. |
| -9003 | current license tier does not allow this feature. |

## Example (Clarion)
```clarion
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
- Register the vuMailKit template/global extension or call vuMailKitInitialize(LicenseString) at EXE startup before using this function. If this licensing startup step is missed, the function returns -9001 and vuMailLastError() explains that the problem is vuMailKit licensing/setup, not mail-server authentication.
- If this function returns -451, clean up the application folder. That code means unrelated .NET mail/OAuth/runtime files may interfere with vuMailKit's embedded dependencies; it is not a mail-server authentication error.
- This call waits until the SMTP worker is idle and queue depth is zero.
- The wait is indefinite, matching legacy vuMail behavior.
- It returns 1 only when the final send result is the success state; otherwise it returns 0, except for immediate validation/licensing failures.
- If a save folder was set with vuSetSaveFolder() or vuGlobalsSetEmailFolder() before this call, vuMailKit captures that folder with the queued message and saves an outgoing .eml copy before the SMTP send attempt.

- If a sent-mail CSV log was set with vuSetMailLog() or vuLogSetFile() before this call, vuMailKit appends a row for the send attempt. Successful sends include the saved .eml path when an outgoing copy was saved. Failed sends are logged with the result text, and legacy logging never blocks a completed send.
- Attachments may be blank, a single full path, a comma/semicolon-separated list, or wildcard masks such as C:\Temp\*.pdf. For the legacy embed-attachments marker, Attach can also include remote http/https image URLs that should be embedded inside the body.
- Check vuMailLastError() for verbose send diagnostics after a non-1 result.
- HTML markup in InBody is auto-detected on the SMTP path.
- When HTML is detected, vuMailKit sends both a plain-text alternative body and the original HTML body.
- The verified MIME structure for HTML messages is multipart/alternative, with the HTML body wrapped in multipart/related when inline CID resources are present.
- Regular file attachments continue to work with both plain text and HTML sends.
- Local image references in HTML img src values are embedded as inline CID resources on the SMTP path.
- Remote http and https image references in HTML img src values are downloaded at send time and embedded as inline CID resources when they can be retrieved safely.
- Existing cid image references are left unchanged.
- The legacy _embed attachments_ body tag is supported again for local image files and remote http/https image URLs listed in Attach, including optional height= and width= attributes. Image resources consumed by this marker do not also go out as normal attachments.
- If InBody is an existing file path, vuMailKit loads the file contents before HTML detection.
- External body files that contain accented or international characters should be saved as UTF-8. HTML files should also include a normal charset declaration such as &lt;meta charset="utf-8"&gt;.
- When you hard-code HTML directly in a Clarion source string literal, write each literal < as <<. Runtime HTML loaded from a file, database, or entry control does not need that source-level escaping.

## HTML example (Clarion source literal)

```clarion
cBody = '<<html><<body><<h2>vuMailKit HTML Test<</h2>' & |
        '<<p>This is a test email sent by vuMailKit.<</p>' & |
        '<<ul><<li>First item<</li>' & |
        '<<li><<strong>Second item should be bold<</strong><</li><</ul>' & |
        '<</body><</html>'
cAttach = ''
```

## Inline image example, local file path (Clarion source literal)

```clarion
cBody = '<<html><<body><<p>Inline image test<</p>' & |
        '<<p><<img src="C:\Temp\test.jpg"><</p>' & |
        '<</body><</html>'
cAttach = ''
```

## Inline image example, remote web image (Clarion source literal)

```clarion
cBody = '<<html><<body><<p>Remote inline image test<</p>' & |
        '<<p><<img src="https://www.example.com/images/test.jpg"><</p>' & |
        '<</body><</html>'
cAttach = ''
```

## Legacy inline-attachment embed example

```clarion
cBody = '_embed attachments width=300 height=150_'
cAttach = 'C:\Temp\test.jpg'
```

For more body-image patterns, including external HTML files with images and wildcard image insertion from the Attach parameter, see [Send an embedded image](../getting-started/send-an-embedded-image.md).

## From display name behavior

- If a sender display name has been configured, vuMailKit formats the From header as Display Name &lt;email@address&gt;.
- If no display name exists, vuMailKit falls back to the plain email address.
- This preserves compatibility with legacy code that only supplies an address.

## From selection rules

vuSendMailWait() resolves the effective sender using these rules:

- If xFrom is blank, vuMailKit uses the saved/default profile sender.
- If xFrom contains a full mailbox like Support &lt;support@example.com&gt;, vuMailKit uses it as the sender for that message.
- If xFrom contains only a plain email address like support@example.com, vuMailKit uses that address with no display name override.
- If xFrom contains only a display name like Technical Support, vuMailKit combines that name with the saved/default profile sender address.

This keeps legacy behavior intact while allowing per-message display-name overrides when a stored profile sender already exists.

## Notes on OAuth/profile sends

- When you pass a different **email address** in xFrom, the provider/server may still reject that message if the authenticated account is not allowed to send as that address.
- A **display-name-only** override is safe because it keeps the stored profile sender address and changes only the visible name.

## Related getting started pages

- [Recommended send flow with a stored profile](../getting-started/recommended-send-flow.md)
- [Send a Simple HTML Email with a Company Logo](../getting-started/send-a-simple-html-email-with-a-company-logo.md)

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)