
[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)

# Store and Restore Clarion Data

ProTOML can map common Clarion structures without requiring application code for every field.

## GROUP

A small Clarion GROUP might look like this:

```clarion
SettingsType GROUP,TYPE
AppName        STRING(80),NAME('application_name')
RefreshMinutes LONG,NAME('refresh_minutes')
AutoSave       BYTE,NAME('auto_save')
             END

AppSettings GROUP(SettingsType)
            END
```

Write or read the complete GROUP with one call:

```clarion
Toml.WriteGroup('settings',AppSettings)
Toml.ReadGroup('settings',AppSettings)
```

The TOML table is:

```toml
[settings]
application_name = "PageSnip"
refresh_minutes = 15
auto_save = true
```

## Current FILE record buffer

A small Clarion FILE record might look like this:

```clarion
CustomerFile FILE,DRIVER('TOPSPEED'),PRE(CUS)
CustomerKey    KEY(CUS:CustomerId)
Record         RECORD
CustomerId       LONG,NAME('customer_id')
CustomerName     STRING(80),NAME('customer_name')
Telephone        STRING(30),NAME('telephone')
               END
             END
```

Write or read the current record buffer with one call:

```clarion
Toml.WriteRecord('customer',CUS:Record)
Toml.ReadRecord('customer',CUS:Record)
```

The TOML table is:

```toml
[customer]
customer_id = 1
customer_name = "Ada Lovelace"
telephone = "+1 423 555 0148"
```

## QUEUE

A small Clarion QUEUE might look like this:

```clarion
ContactQueue QUEUE,PRE(CON)
ContactType    STRING(20),NAME('contact_type')
ContactValue   STRING(100),NAME('contact_value')
             END
```

Write or read the complete QUEUE with one call:

```clarion
Toml.WriteQueue('contacts',ContactQueue)
Toml.ReadQueue('contacts',ContactQueue)
```

Each QUEUE record becomes one TOML array-of-tables entry:

```toml
[[contacts]]
contact_type = "Email"
contact_value = "ada@example.com"

[[contacts]]
contact_type = "Mobile"
contact_value = "+1 423 555 0148"
```

You can combine the GROUP, record buffer, and QUEUE in the same document, then store the complete document in text, a MEMO, a BLOB, or a .toml file.

[Home](../index.md) | [Getting Started](../getting-started/index.md) | [Browse by Category](../categories/index.md) | [Class Methods](../classes/index.md) | [Low-Level API](../functions/index.md)