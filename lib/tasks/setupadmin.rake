# frozen_string_literal: true

require 'io/console'

desc 'Setup first admin user'
task setupadmin: [:environment] do
  if Member.count.zero?
    puts 'Please enter an EMAIL ADDRESS for your admin user:'
    email = STDIN.gets.chomp

    puts 'Please enter a USERNAME for your admin user:'
    username = STDIN.gets.chomp

    puts 'Please enter a PASSWORD for your admin user:'
    password = STDIN.noecho(&:gets).chomp

    # Create admin user
    @admin = Member.create(
      username: username,
      firstname: 'Admin',
      lastname: 'Admin',
      email: email,
      password: password,
      password_confirmation: password,
      admin: true
    )

    # Create initial category
    Category.create(
      name: 'Uncategorized'
    )

    puts 'Your admin user has been created. You can sign in with this account.'
  else
    puts 'Users have already been created for this Member Portal.'
  end
end
