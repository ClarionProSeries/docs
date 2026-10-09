
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# WriteQueue

Writes an ordinary Clarion QUEUE as a TOML array of tables in queue order.

## Clarion class declaration

```clarion
WriteQueue PROCEDURE(STRING pArrayPath,*QUEUE pQueue),LONG
```

## Purpose

Writes an ordinary Clarion QUEUE as a TOML array of tables in queue order.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pArrayPath | STRING | TOML array-of-tables path used for the QUEUE. |
| pQueue | *QUEUE | Ordinary Clarion QUEUE instance to write. |

## Return value

Returns ProTOML:OK on success or a negative ProTOML error code. Call GetLastError for readable details.

## Example (Clarion)

```clarion
Contacts QUEUE
Kind       STRING(20),NAME('contact_type')
Value      STRING(100),NAME('contact_value')
         END
RetCode  LONG

CODE
Toml.StartDocument()
RetCode = Toml.WriteQueue('contacts',Contacts)
```

## Notes

- BINDABLE is not required. Each queue record becomes one TOML array-of-tables row.
- Ordinary field labels are used as keys; optional NAME attributes provide stable external key names.
- Clarion queue positions are one-based; TOML array indexes are zero-based. The class hides that difference.

## Related methods

- [ReadQueue](ReadQueue.md)
- [WriteGroup](WriteGroup.md)
- [SaveMemo](SaveMemo.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)