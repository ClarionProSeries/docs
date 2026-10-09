
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# ReadQueue

Rebuilds an ordinary Clarion QUEUE from a TOML array of tables and clears partial results after a failed load.

## Clarion class declaration

```clarion
ReadQueue PROCEDURE(STRING pArrayPath,*QUEUE pQueue),LONG
```

## Purpose

Rebuilds an ordinary Clarion QUEUE from a TOML array of tables and clears partial results after a failed load.

## Parameters

| Parameter | Type | Description |
| --- | --- | --- |
| pArrayPath | STRING | TOML array-of-tables path used for the QUEUE. |
| pQueue | *QUEUE | Ordinary Clarion QUEUE instance to rebuild. |

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
RetCode = Toml.ReadQueue('contacts',Contacts)
```

## Notes

- BINDABLE is not required. Each TOML array-of-tables row becomes one queue record.
- Ordinary field labels are used as keys; optional NAME attributes provide stable external key names.
- Clarion queue positions are one-based; TOML array indexes are zero-based. The class hides that difference.

## Related methods

- [WriteQueue](WriteQueue.md)
- [ReadGroup](ReadGroup.md)

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)