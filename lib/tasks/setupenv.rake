# frozen_string_literal: true

desc 'Setup .env.local with example config'
task :setupenv do
  overwrite = true
  if File.file?('./.env.local')
    puts 'Dev environment already setup. Overwrite? Y/N'
    overwrite = STDIN.gets.chomp.casecmp('Y')
  end

  if overwrite
    File.open('./.env.local', 'w+') do |f|
      f.puts <<~YML
        SECRET_KEY_BASE=insecure-secret_key_base
        DATABASE_URL=postgres://$(whoami)@localhost/member_portal_dev
        ALGOLIA_API_KEY=insecure-algolia_api_key
        ALGOLIA_APPLICATION_ID=insecure-algolia_application_id
        SMTP_ADDRESS=smtp.address.com
        SMTP_DOMAIN=yourdomain.com
        SMTP_USERNAME=sender@yourdomain.com
        SMTP_PASSWORD=a-secure-password
        SMTP_PORT=587
      YML
    end
  end
end
