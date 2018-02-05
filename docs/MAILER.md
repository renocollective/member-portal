# Setting up email for the application

## Using SMTP in Development

For development, we are using a local SMTP server called [Mailcatcher](https://github.com/sj26/mailcatcher) for local development.

You will need to install Mailcatcher and run it. The settings for using the local SMTP server are already setup in `/config/environments/development.rb`.

> gem install mailcatcher
> mailcatcher


## Using SMTP in Production

_Author note: We'll be adding more documentation to this section_

If you would like to use a service such as Mailgun or Sendgrid, you will have to set up an account and go through any required steps for domain verification to use that service. Once verified, you can use their provided SMTP settings and stored in environment variables.

> SMTP_ADDRESS=smtp.gmail.com  
> SMTP_DOMAIN=gmail.com  
> SMTP_USERNAME=yourmemail@gmail.com  
> SMTP_PASSWORD=youremailpassword  
