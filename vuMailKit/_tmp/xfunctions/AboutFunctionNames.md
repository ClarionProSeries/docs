
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# About function names

vuMailKit supports two naming styles:

- **Legacy names**: the original vuMail exported function names, kept for backwards compatibility.
- **Preferred names**: new names that are exported as aliases and behave identically to the legacy function they map to.

Preferred names exist so new development can use a cleaner, grouped naming pattern that is easier to scan and search.

## Preferred naming format

All preferred names follow this format:

- `vu` + `Subsystem` + `Verb` + `Thing`

Rules:

- Preferred names start with the lowercase prefix `vu`.
- Immediately after `vu` is a subsystem marker that groups related functions together.
- Within a subsystem, function names use consistent verb and noun ordering.

Examples:

- `vuSmtpSetServer`
- `vuSmtpGetServer`
- `vuLogSetFile`
- `vuLogGetFile`
- `vuGlobalsSave`
- `vuGlobalsLoad`
- `vuPop3Connect`
- `vuPop3LoadEmail`

## Subsystem markers

| Subsystem | What it covers |
|---|---|
| `vuSmtp` | SMTP send and SMTP settings |
| `vuPop3` | POP3 receive and POP3 settings |
| `vuImap` | IMAP receive and IMAP settings |
| `vuOAuth` | OAuth login and token workflows |
| `vuGlobals` | Registry persistence and runtime globals/session |
| `vuLog` | Log file path and logging options |
| `vuNet` | Proxy, transport, and network related settings |

Additional subsystem markers may be added as needed, but the rule remains: the subsystem marker comes immediately after `vu`.

## How to read the names

The subsystem tells you where to look, and the verb tells you what the function does.

Examples:

- `vuSmtpSetServer` means "SMTP subsystem, set the server value".
- `vuLogGetFile` means "Log subsystem, get the configured file path".
- `vuGlobalsLoad` means "Globals subsystem, load values into memory for this run".

## How this relates to legacy names

When a preferred name exists, it is the recommended API for new development. The legacy name is still exported so older code keeps working.

Documentation is maintained once per behavior:

- The preferred function page contains the full documentation.
- The legacy function page is a short forwarder page that points to the preferred page.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)