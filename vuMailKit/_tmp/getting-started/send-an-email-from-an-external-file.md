
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Send an Email from an External File

Using an external file for the message body is often easier than embedding the whole body directly in Clarion source.

It is a good fit when:

- the content is long
- the content is HTML
- the customer may want to maintain the text
- you want to use AI or an editor to help create the body
- you want to avoid Clarion string escaping for HTML

## How vuMailKit recognizes a body file

The Body parameter on vuSendMail() and vuSendMailWait() can be ordinary body text or a path to an existing file.

If the Body value points to an existing file, vuMailKit loads that file and uses the file contents as the message body.

## Plain text file example

### CustomerNotice.txt

```text
Dear Customer,

Your order is ready.

Thank you for your business.
```

### Clarion send code

```clarion
Result  LONG
FromAdr CSTRING(256)
ToAdr   CSTRING(256)
CCAdr   CSTRING(256)
BCCAdr  CSTRING(256)
Subject CSTRING(256)
Body    CSTRING(260)
Attach  CSTRING(260)

FromAdr = ''
ToAdr   = 'customer@example.com'
CCAdr   = ''
BCCAdr  = ''
Subject = 'Your order is ready'
Body    = CLIP(PATH()) & '\CustomerNotice.txt'
Attach  = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END
```

## HTML file example

### CustomerNotice.html

```html
<!doctype html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
  <h2>Your order is ready</h2>
  <p>Dear Customer,</p>
  <p>Your order is ready for pickup.</p>
</body>
</html>
```

### Clarion send code

```clarion
Body = CLIP(PATH()) & '\CustomerNotice.html'
Attach = ''

Result = vuSendMailWait(FromAdr, ToAdr, CCAdr, BCCAdr, Subject, Body, Attach)
IF Result <> 1
  MESSAGE('Send failed: ' & vuMailLastError())
END
```

When the loaded body is HTML, vuMailKit uses the normal HTML send path and creates a plain-text alternative body.

## External HTML with local images

Local image references in HTML img src values can be resolved from the folder containing the HTML file. Keep the image next to the HTML file or use a full path.

```html
<p><img src="CompanyHeader.png" alt="Company"></p>
<p>Your order is ready.</p>
```

## Important for special characters

Save external text and HTML files as UTF-8 when they contain accented letters or other international characters. HTML files should also include a charset declaration such as &lt;meta charset="utf-8"&gt;.

## Related pages

- [Send an HTML email](send-an-html-email.md)
- [Send an embedded image](send-an-embedded-image.md)
- [Use TokenMerge with email templates](use-tokenmerge-with-email-templates.md)
- [vuSendMail](../functions/vuSendMail.md)
- [vuSendMailWait](../functions/vuSendMailWait.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)