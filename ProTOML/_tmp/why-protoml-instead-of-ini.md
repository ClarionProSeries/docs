

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)

# Why Use ProTOML Instead of INI Files?

INI files remain useful for a few simple values. They become awkward when the application needs repeating records, mixed data types, nested sections, or one portable package of related information.

## A repeating list in an INI file

```ini
[Contacts]
Count=2
Contact1Type=Email
Contact1Value=ada@example.com
Contact2Type=Mobile
Contact2Value=+1 423 555 0148
```

The application must invent and maintain the count and numbered key scheme.

## The same data in TOML

```toml
[[contacts]]
type = "Email"
value = "ada@example.com"

[[contacts]]
type = "Mobile"
value = "+1 423 555 0148"
```

With ProTOML, the Clarion code can be one high-level call:

```clarion
Toml.WriteQueue('contacts',ContactQueue)
```

## Where ProTOML helps

| Need | INI approach | ProTOML approach |
| --- | --- | --- |
| Repeating records | Invent counts and numbered keys. | Map a QUEUE to an array of tables. |
| Mixed data | Convert and parse values individually. | Store native TOML strings, numbers, Boolean values, dates, and times. |
| Several related structures | Spread data across sections and custom conventions. | Combine values, GROUPs, record data, and QUEUEs in one document. |
| Storage location | Usually treated as a disk file. | Store the document in text, a MEMO, a BLOB, or a .toml file. |
| Exchange with other software | Requires agreement on custom INI conventions. | Use a standard format supported by many modern languages and tools. |

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)