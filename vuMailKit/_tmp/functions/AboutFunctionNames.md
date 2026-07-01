
[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)

# About function names

vuMailKit supports two naming styles:

- **Legacy names**: the original vuMail exported function names, kept for backwards compatibility.
- **Preferred names**: new names that are exported as aliases and behave identically to the legacy function they map to.

Preferred names exist so new development can use a cleaner, grouped naming pattern that is easier to scan and search.

## Preferred naming format

All preferred names follow this format:

- vu + Subsystem + Verb + Thing

Rules:

- Preferred names start with the lowercase prefix vu.
- Immediately after vu is a subsystem marker that groups related functions together.
- Within a subsystem, function names use consistent verb and noun ordering.

Examples:

- vuSmtpSetServer
- vuSmtpGetServer
- vuLogSetFile
- vuLogGetFile
- vuSetDiagnosticsLevel
- vuGetDiagnosticsLevel
- vuGlobalsSave
- vuGlobalsLoad
- vuPop3Connect
- vuPop3LoadEmail

## Subsystem markers

| Subsystem | What it covers |
|---|---|
| vuSmtp | SMTP send and SMTP settings |
| vuPop3 | POP3 receive and POP3 settings |
| vuImap | IMAP receive and IMAP settings |
| vuOAuth | OAuth login and token workflows |
| vuGlobals | Registry persistence and runtime globals/session |
| vuLog | Legacy sent-mail CSV/activity log file path helpers |
| vuNet | Proxy, transport, and network related settings |

Additional subsystem markers may be added as needed. Some compatibility-improvement names, such as vuSetDiagnosticsLevel(), use a clearer verb-first phrase when that is the least confusing replacement for an older legacy name.

## How to read the names

The subsystem tells you where to look, and the verb tells you what the function does.

Examples:

- vuSmtpSetServer means "SMTP subsystem, set the server value".
- vuLogGetFile means "Log subsystem, get the sent-mail CSV/activity log file path".
- vuSetDiagnosticsLevel means "Diagnostics subsystem, set normal or trace troubleshooting detail".
- vuGlobalsLoad means "Globals subsystem, load values into memory for this run".

## Naming note for logging and diagnostics

The old vuSetMailLogLevel() name is kept as a legacy alias, but new code should use vuSetDiagnosticsLevel(). The level setting controls diagnostics verbosity only. It does not control the sent-mail CSV/activity log selected by vuSetMailLog() or vuLogSetFile().

## How this relates to legacy names

When a preferred name exists, it is the recommended API for new development. The legacy name is still exported so older code keeps working.

Documentation is maintained once per behavior:

- The preferred function page contains the full documentation.
- The legacy function page is a short forwarder page that points to the preferred page.

[Home](../index.md) | [All functions](index.md) | [Legacy functions](legacy-index.md) | [Categories](../categories/index.md)