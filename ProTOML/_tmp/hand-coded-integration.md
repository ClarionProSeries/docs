
[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)

# Hand-Coded Integration Without the Template

The global template is recommended for normal applications. Use this page only when you deliberately want to integrate ProTOML by hand.

## Include and declare the class

```clarion
INCLUDE('ProTOMLClass.inc'),ONCE

Toml        ProTOMLClass
LicenseMode LONG
ErrorText   CSTRING(2048)
```

## Initialize the license once

Call InitializeLicense once during EXE startup before using ProTOML. Use the developer license value supplied with your purchase, or `PTM-DEMO` for demo mode:

```clarion
LicenseMode = Toml.InitializeLicense('PTM-DEMO')
IF LicenseMode < 0
  Toml.GetLastError(ErrorText)
  MESSAGE(ErrorText)
END
```

## Use the high-level methods

```clarion
Toml.StartDocument()
Toml.SetString('application.name','My Application')
Toml.WriteQueue('contacts',ContactQueue)
```

The hand-coded application must link the matching ProTOML.lib and deploy ProTOML.dll with the EXE.

[Home](index.md) | [Getting Started](getting-started/index.md) | [Browse by Category](categories/index.md) | [Class Methods](classes/index.md) | [Low-Level API](functions/index.md)