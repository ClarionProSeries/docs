
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# Recommended Send Flow with a Stored Profile

After the [vuMailKit Email Setup Wizard](vumailkit-email-setup-wizard.md) has saved a working profile, most applications can send mail without hand-coding server setup or OAuth logic.

This page shows a practical button-handler flow for a normal Clarion application:

1. Check whether a saved vuMailKit profile exists.
2. If no profile exists, offer to run the **vuMailKit Email Setup Wizard**.
3. Check the recipient address before sending.
4. Warn the user if the address is valid but suspicious.
5. Send using the saved profile.
6. Show useful messages for licensing, setup, OAuth, connection, authentication, and provider rejection failures.

For Microsoft or Google OAuth accounts, this is still the zero-OAuth-code path. The wizard handles authorization and profile saving. Your send code uses the saved profile.

## Where this fits

Use this pattern after the normal first-time setup work:

1. Add the vuMailKit global template to the EXE application.
2. Enter the developer license string in the template, inside single quotes.
3. Configure OAuth provider values in the template if your application supports Microsoft or Google OAuth accounts.
4. Use CTRL+U to import the **vuMailKit Email Setup Wizard**.
5. Compile and run the EXE.
6. Let the user run the wizard, test the account, and save the profile.
7. Use a send routine like the one below from your application.

In a multi-DLL application, put the vuMailKit template on the EXE app. The EXE initializes vuMailKit once for the process.

## Copyable Clarion pattern

The routine below is intentionally close to the flow used by the downloadable vuMailKit demo, but it is written as an application pattern rather than demo-only code.

This version uses [vuSendMailWait](../functions/vuSendMailWait.md) so the button handler can show an immediate success or failure result after the send finishes. If you prefer background sending, see the note after the example.

```clarion
ROUTINE:SendMailFromSavedProfile ROUTINE
  DATA
HaveProfile     LONG
WizardAnswer    LONG
EmailAddressOK  LONG
Result          LONG
LastRC          LONG
FinalText       CSTRING(2048)
Detail          CSTRING(2048)

cFrom           CSTRING(256)
cTo             CSTRING(256)
cCC             CSTRING(256)
cBCC            CSTRING(256)
cSubject        CSTRING(256)
cBody           CSTRING(4096)
cAttach         CSTRING(512)

  CODE

  cFrom    = ''              ! Blank uses the saved/default profile sender
  cTo      = CLIP(MessageTo)
  cCC      = ''
  cBCC     = ''
  cSubject = CLIP(Subject)
  cBody    = CLIP(MessageBody)
  cAttach  = ''

  ! If no profile exists yet, offer the setup wizard.
  HaveProfile = vuHaveStoredProfile()
  IF HaveProfile = 0
    BEEP(BEEP:SystemExclamation) ; YIELD()
    WizardAnswer = MESSAGE('No email profile has been set up yet.|Would you like to run the Setup Wizard now?', |
                   'vuMailKit', ICON:Question, |
                   BUTTON:Yes+BUTTON:No, BUTTON:Yes, 0)

    CASE WizardAnswer
    OF BUTTON:Yes
      ! This is the wizard procedure imported into the demo application.
      ! Use the procedure name from your imported vuMailKit Email Setup Wizard.
      vuMailKitSetupWizard()

      HaveProfile = vuHaveStoredProfile()
      IF HaveProfile = 0
        MESSAGE('A saved profile is required before this message can be sent.', |
                'vuMailKit', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)
        EXIT
      END
    OF BUTTON:No
      EXIT
    END
  END

  ! Required recipient field.
  IF LEN(CLIP(cTo)) = 0
    BEEP(BEEP:SystemExclamation) ; YIELD()
    MESSAGE('The email address can not be blank.', |
            'Incomplete Email Address', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)
    SELECT(?MessageTo)
    EXIT
  END

  ! Validate the recipient before sending.
  EmailAddressOK = vuValidateMailAddr(cTo)
  CASE EmailAddressOK
  OF 0
    BEEP(BEEP:SystemExclamation) ; YIELD()
    MESSAGE('The email address is invalid.', |
            'Invalid Email Address', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)
    SELECT(?MessageTo)
    EXIT

  OF 2
    BEEP(BEEP:SystemExclamation) ; YIELD()
    CASE MESSAGE('The email address looks suspicious.|Do you want to continue?', |
         'Suspicious Email Address', ICON:Exclamation, |
         BUTTON:Yes+BUTTON:No, BUTTON:No, 0)
    OF BUTTON:Yes
      ! Continue.
    OF BUTTON:No
      SELECT(?MessageTo)
      EXIT
    END
  END

  ! Send using the saved/default profile.
  Result = vuSendMailWait(cFrom, cTo, cCC, cBCC, cSubject, cBody, cAttach)

  CASE Result
  OF 1
    MESSAGE('Your message was sent successfully.', |
            'vuMailKit', ICON:Asterisk, BUTTON:OK, BUTTON:OK, 0)

  OF 0
    FinalText = vuMailLastError()
    LastRC = vuMailLastReturnCode()

    CASE LastRC
    OF -701
      Detail = 'OAuth authorization needs to be refreshed. Please run the Setup Wizard again.'
    OF -702
      Detail = 'OAuth is temporarily unavailable. Please try again in a moment.'
    OF -711
      Detail = 'The mail server could not be reached. Please check the connection and server settings.'
    OF -712
      Detail = 'The server rejected the sign-in. Please check the account settings and try again.'
    OF -713
      Detail = 'The server rejected the message.'
    OF -9001
      Detail = 'Blocked by licensing. vuMailKitInitialize was not called.'
    OF -9002
      Detail = 'Blocked by licensing. License is invalid or initialization failed.'
    OF -9003
      Detail = 'Blocked by licensing. Current license tier does not allow this feature.'
    ELSE
      Detail = 'The message could not be sent.'
    END

    IF LEN(CLIP(FinalText)) > 0
      Detail = CLIP(Detail) & '||Details: ' & CLIP(FinalText)
    END

    BEEP(BEEP:SystemExclamation) ; YIELD()
    MESSAGE(Detail, 'vuMailKit', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)

  OF -2
    FinalText = vuMailLastError()
    BEEP(BEEP:SystemExclamation) ; YIELD()
    MESSAGE('The message could not be sent because one or more email addresses are invalid.||Details: ' & CLIP(FinalText), |
            'vuMailKit', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)

  OF -451
    FinalText = vuMailLastError()
    BEEP(BEEP:SystemExclamation) ; YIELD()
    MESSAGE('vuMailKit detected conflicting mail/runtime files in the application folder.||Details: ' & CLIP(FinalText), |
            'vuMailKit', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)

  OF -9001
    FinalText = vuMailLastError()
    BEEP(BEEP:SystemExclamation) ; YIELD()
    MESSAGE('vuMailKit has not been initialized.||Details: ' & CLIP(FinalText), |
            'vuMailKit', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)

  OF -9002
    FinalText = vuMailLastError()
    BEEP(BEEP:SystemExclamation) ; YIELD()
    MESSAGE('The current license is not valid.||Details: ' & CLIP(FinalText), |
            'vuMailKit', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)

  OF -9003
    FinalText = vuMailLastError()
    BEEP(BEEP:SystemExclamation) ; YIELD()
    MESSAGE('The current license does not allow this feature.||Details: ' & CLIP(FinalText), |
            'vuMailKit', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)

  ELSE
    FinalText = vuMailLastError()
    LastRC = vuMailLastReturnCode()
    BEEP(BEEP:SystemExclamation) ; YIELD()
    MESSAGE('The message could not be sent.||Return code: ' & LastRC & '||Details: ' & CLIP(FinalText), |
            'vuMailKit', ICON:Exclamation, BUTTON:OK, BUTTON:OK, 0)
  END
```

## If you use vuSendMail instead

[vuSendMail](../functions/vuSendMail.md) is the background-send version. A return value of 1 means the message was accepted and queued, not necessarily that final SMTP delivery has already completed.

Use [vuMailStatus](../functions/vuMailStatus.md) to watch the queue and then read [vuMailLastError](../functions/vuMailLastError.md) and [vuMailLastReturnCode](../functions/vuMailLastReturnCode.md) after processing finishes.

For a simple Send button that should immediately tell the user what happened, [vuSendMailWait](../functions/vuSendMailWait.md) is usually easier.

## Why the profile check is useful

[vuHaveStoredProfile](../functions/vuHaveStoredProfile.md) lets your application detect a common first-run condition and route the user into the wizard instead of letting the send fail later.

A 0 return means no managed vuMailKit profile was found, or the check failed. In a new profile-based application, that is a good time to offer the setup wizard. In a legacy migration, remember that older registry settings may still exist even when no managed profile exists yet.

## Address validation return values

[vuValidateMailAddr](../functions/vuValidateMailAddr.md) returns:

| Value | Meaning | Recommended action |
|---|---|---|
| 1 | Address has a valid practical internet email-address format. | Continue. |
| 2 | Address is valid but suspicious, such as a typo-like repeated domain suffix. | Warn the user and let them decide. |
| 0 | Address is malformed or incomplete. | Stop and return focus to the address field. |

## Send diagnostics to handle

The direct return value from the send function tells you whether the call succeeded, failed, or hit an immediate validation/licensing problem. For a completed send that returns 0, use [vuMailLastReturnCode](../functions/vuMailLastReturnCode.md) and [vuMailLastError](../functions/vuMailLastError.md) for the user-facing reason.

| Code | Meaning | Typical user guidance |
|---|---|---|
| -701 | OAuth reauthorization is required. | Run the Setup Wizard again for that account. |
| -702 | Temporary OAuth failure. | Try again later. |
| -711 | Provider or mail server could not be reached. | Check connection and server settings. |
| -712 | SMTP/authentication was rejected. | Check account settings or rerun setup. |
| -713 | Provider rejected the message. | Review the recipient, sender, message, and provider policy. |
| -451 | Conflicting mail/runtime files were found in the application folder. | Clean up deployment files before troubleshooting mail settings. |
| -9001 | vuMailKit licensing was not initialized. | Add the global template to the EXE or call vuMailKitInitialize at startup. |
| -9002 | License string is invalid or initialization failed. | Check the license string and template/startup setup. |
| -9003 | Current license tier does not allow the feature. | Use a license tier that includes the feature. |

The important support point is that licensing/setup failures are not mail-server password failures. Show those messages differently so the user does not waste time changing mailbox credentials.

## Related pages

- [First-time setup](first-time-setup.md)
- [vuMailKit Email Setup Wizard](vumailkit-email-setup-wizard.md)
- [Send your first email](send-your-first-email.md)
- [Deployment and profiles](deployment-and-profiles.md)
- [vuHaveStoredProfile](../functions/vuHaveStoredProfile.md)
- [vuValidateMailAddr](../functions/vuValidateMailAddr.md)
- [vuSendMail](../functions/vuSendMail.md)
- [vuSendMailWait](../functions/vuSendMailWait.md)
- [vuMailLastError](../functions/vuMailLastError.md)
- [vuMailLastReturnCode](../functions/vuMailLastReturnCode.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)