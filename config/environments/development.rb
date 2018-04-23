# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false

  # Added from devise instructions
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  config.action_mailer.delivery_method = :smtp

  # Using Mailcatcher for dev.
  # Refer to Docs for use in /docs/Mailer.md
  config.action_mailer.smtp_settings = {
    address: '127.0.0.1',
    port: 1025
  }

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_caching = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  config.active_support.deprecation = :log

  config.active_record.migration_error = :page_load

  config.assets.debug = true

  config.assets.quiet = true

  # Disable Sass caching during development.
  config.sass.cache = false

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  config.algolia_search = false
  config.use_s3 = false
end
# rubocop:enable Metrics/BlockLength
