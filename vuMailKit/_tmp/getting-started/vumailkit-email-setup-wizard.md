
[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)

# vuMailKit Email Setup Wizard

The **vuMailKit Email Setup Wizard** is the easiest way to get a working email profile into your application.

After the vuMailKit global template is added to the EXE application and the required template settings are entered, use the Clarion **Utility Template** command, **CTRL+U**, to import the **vuMailKit Email Setup Wizard** into the application.

The wizard then runs from your compiled application. It is not a separate manual server-settings worksheet that your user has to fill out by hand.

## Zero OAuth code for normal applications

For normal Microsoft or Google OAuth accounts, the wizard is the OAuth implementation path. Configure the provider values in the global template, import the wizard, and let the wizard perform the authorization and profile-save work. Your send code can then use the saved profile without calling vuOAuthBeginLogin, vuOAuthCompleteLogin, or the other lower-level OAuth helpers directly.

## Why the wizard matters

The wizard takes care of the hard parts that older email setup screens often left to the developer or end user.

It can:

- validate that the entered email address has a valid email-address format
- detect the likely mail provider from the address and domain
- determine whether the account should use normal username/password SMTP or an OAuth sign-in path
- walk the user through Microsoft or Google OAuth authorization when OAuth support is enabled in the template
- autodetect the normal server, port, SSL/TLS, and sign-in settings for common providers
- send a test email so the user can confirm that the settings work
- save the working result into a reusable vuMailKit profile

For many accounts, this means the user enters an email address, follows the prompts, sends a test email, and saves the profile without needing to know SMTP server names, port numbers, or TLS settings.

Manual configuration remains available for unusual providers, custom domains, or cases where autodetect cannot identify the correct settings.

## Importing the wizard

Use this sequence in the Clarion IDE:

1. Add the **vuMailKit** global template to the EXE application.
2. Enter the developer license string in the template, inside single quotes.
3. Enable Microsoft or Google OAuth support in the template if your application will support those sign-in paths.
4. Use the Clarion **Utility Template** command, **CTRL+U**, to import the **vuMailKit Email Setup Wizard**.
5. Compile the application.
6. Run the compiled EXE.
7. Open the wizard from your application.
8. Let the user enter the email address, test the settings, and save the profile.

In a Clarion multi-DLL application, add the vuMailKit global template to the EXE application, not to the supporting DLL applications. The EXE initializes vuMailKit for the process, and the wizard and send functions can then use the same initialized runtime.

## What the user sees

The user starts with an email address.

The wizard validates the address, detects the provider path, and asks for the information needed for that account type. When OAuth is required and enabled, the wizard guides the user through the authorization process.

After settings are detected or entered, the wizard allows the user to send a test email. When the test succeeds, the wizard saves the settings into a profile so later sends can use the saved profile automatically.

## After the profile is saved

Once the wizard has saved a working profile, most applications can send mail with a small send call such as [vuSendMail](../functions/vuSendMail.md) or [vuSendMailWait](../functions/vuSendMailWait.md).

For a practical Send button pattern that checks for the saved profile, offers to run the wizard when needed, validates the recipient, sends, and shows user-friendly diagnostics, see [Recommended send flow with a stored profile](recommended-send-flow.md).

The profile can also be loaded explicitly with [vuLoadProfile](../functions/vuLoadProfile.md) or [vuLoadProfileEx](../functions/vuLoadProfileEx.md) when your application needs that level of control.

## Related pages

- [First-time setup](first-time-setup.md)
- [Send your first email](send-your-first-email.md)
- [Recommended send flow with a stored profile](recommended-send-flow.md)
- [OAuth setup](../oauth/index.md)
- [Template usage](../template-usage.md)
- [vuMailKitInitialize](../functions/vuMailKitInitialize.md)
- [vuLoadProfile](../functions/vuLoadProfile.md)
- [vuSaveProfile](../functions/vuSaveProfile.md)

[Home](../index.md) | [Getting Started](index.md) | [Browse by Category](../categories/index.md) | [All functions](../functions/index.md)