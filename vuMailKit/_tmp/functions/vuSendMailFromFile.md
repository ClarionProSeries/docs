
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# vuSendMailFromFile()

```Prototype
vuSendMailFromFile(*CSTRING InCsvFileName,*CSTRING InFromEmail),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMailFromFile')
```

## Purpose
Reads a CSV file of messages, validates rows, and queues valid rows for SMTP delivery.

## Parameters
| Parameter | Type | Description |
|---|---|---|
| InCsvFileName | *CSTRING | CSV file path to read. |
| InFromEmail | *CSTRING | Default attachment path applied when a row has an empty attachment field. |

## Return value / error codes
- `1`: At least one valid row was queued.
- `0`: File missing/invalid, no valid rows, or processing failure.

## Example (Clarion)
```clarion
MAP
  MODULE('vuMail.dll')
    vuSendMailFromFile(*CSTRING InCsvFileName,*CSTRING InFromEmail),SIGNED,PROC,PASCAL,RAW,NAME('vuSendMailFromFile')
  END
END

rc          LONG
csvFile     CSTRING(260)
defaultAtt  CSTRING(260)

csvFile = 'C:\Mail\outbox.csv'
defaultAtt = ''

rc = vuSendMailFromFile(csvFile, defaultAtt)
MESSAGE('vuSendMailFromFile rc=' & rc)
```

## Notes
- Blank lines and invalid rows are skipped.
- If no valid rows remain after parsing, the function returns `0`.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)


## From column behavior

The CSV From column follows the same sender-selection rules as `vuSendMail()` and `vuSendMailWait()`:

- Blank From column uses the saved/default profile sender.
- Full mailbox like `Support <support@example.com>` is used as supplied for that row.
- Plain email address uses that address with no display name override.
- Plain display name only, such as `Technical Support`, combines that name with the saved/default profile sender address.

If a row supplies a display name only and there is no saved/default profile sender address available, that row is treated as invalid and is skipped.