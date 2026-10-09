

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)

# What ProTOML Can Do for Your Clarion Application

ProTOML turns normal Clarion data into one readable, structured document. You can keep that document in memory, store it with an existing record, save it as a .toml file, or send it to another program.

## Practical uses

- Application, user, window, report, and print settings
- Per-customer or per-record configuration
- Variable-length option lists and other QUEUE data
- Plug-in and helper settings
- Diagnostic snapshots and support packages
- Import/export packages
- Data exchange with modern languages and tools that already support TOML

## Combine different Clarion data

```clarion
Toml.StartDocument()
Toml.WriteGroup('settings',AppSettings)
Toml.WriteRecord('customer',CustomerFile:Record)
Toml.WriteQueue('contacts',ContactQueue)
```

The document can contain different types of related information without forcing the developer to invent numbered keys or write a custom parser.

## Store it wherever it is useful

```clarion
Toml.SaveMemo(SettingsFile,STO:TomlMemoIndex)
```

The same document can also be stored in a BLOB, saved to disk, displayed in a TEXT control, or transmitted to another system.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)