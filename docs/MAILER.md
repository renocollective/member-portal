# Setting up email for the application

To send emails on behalf of the Member Portal, you will need to configure an SMTP account.

This information can be added to your `.env.local`.

## Using SMTP in Development

For local development, the quickest way to enable emails is to use an existing Gmail account for SMTP.

The following settings would be required in your `.env.local`.

While using your own Gmail for SMTP, you might need to go to your settings in Gmail to allow "less secure apps". You can do so at [https://myaccount.google.com/lesssecureapps](https://myaccount.google.com/lesssecureapps). Just be sure to set this back as needed.

> SMTP_ADDRESS=smtp.gmail.com  
> SMTP_DOMAIN=gmail.com  
> SMTP_USERNAME=yourmemail@gmail.com  
> SMTP_PASSWORD=youremailpassword  

If you would like to use a service such as Mailgun or Sendgrid, you will have to set up an account and go through any required steps for domain verification to use that service. Once verified, you can use their provided SMTP settings and the environment variables will look very similar to above.

## Using SMTP in Production

_This section coming soon_
