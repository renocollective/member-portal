# frozen_string_literal: true

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# use postgres for database
gem 'pg', '~> 0.21.0'
# Use Puma as the app server
gem 'puma', '~> 3.10'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'carrierwave', '~> 1.2.1'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'mini_magick', '= 4.8.0'

group :development, :test do
  gem 'bundler-audit', '~> 0.6.0'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.15'
  gem 'guard-minitest', '~> 2.4.6'
  gem 'guard-rubocop', '~> 1.3.0'
  gem 'license_finder', '~> 3.0.4'
  gem 'rubocop', '~> 0.50.0', require: false
  gem 'selenium-webdriver'
  # Loads environment variables
  gem 'dotenv-rails', '~> 2.2.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'travis', '~> 1.8.8'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
