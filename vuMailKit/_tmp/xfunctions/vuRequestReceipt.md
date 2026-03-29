
[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)

# vuRequestReceipt()

```Prototype
vuRequestReceipt(), LONG
```

## Description
Sets a runtime flag requesting a return receipt for the next send operation.

## Return value
- Returns `1` on success.

## When to use it
Call this function before `vuSendMail()` or `vuSendMailWait()` when you want the outgoing message to request receipt behavior.

## Example (Clarion)
```clarion
RC LONG

RC = vuRequestReceipt()
RC = vuSendMail(cFrom,cTo,cCC,cBCC,cSubject,cBody,cAttach)
```

## Notes
- This is a runtime send option that applies to the next send call you make.
- Mail clients and mail servers differ in how they honor or ignore receipt requests. A request does not guarantee that a receipt will be returned.

[All functions](index.md) | [Legacy functions](legacy-index.md) | [About function names](AboutFunctionNames.md)