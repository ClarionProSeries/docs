
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# WriteGroup

Writes a flat Clarion GROUP to a TOML table using field labels or NAME attributes as keys.

## Clarion class declaration

```clarion
WriteGroup PROCEDURE(STRING pTablePath,*GROUP pGroup),LONG
```

## Purpose

Writes a flat Clarion GROUP to a TOML table using field labels or NAME attributes as keys.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pTablePath | STRING | TOML table path used for the mapped GROUP or RECORD. |
| pGroup | *GROUP | Ordinary Clarion GROUP instance to write. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
AppSettings GROUP
AppName       STRING(80),NAME('application_name')
Refresh       LONG,NAME('refresh_minutes')
            END
RetCode     LONG

CODE
Toml.StartDocument()
RetCode = Toml.WriteGroup('application',AppSettings)
```

## Notes

- BINDABLE is not required. Ordinary Clarion field labels are used as keys.
- Optional NAME attributes let you choose stable TOML keys that do not depend on Clarion prefixes or labels.

## Related methods

- [ReadGroup](ReadGroup.md)
- [WriteQueue](WriteQueue.md)
- [SaveMemo](SaveMemo.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)