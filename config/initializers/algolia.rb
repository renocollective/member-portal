# frozen_string_literal: true

if Rails.configuration.algolia_search
  AlgoliaSearch.configuration = {
    application_id: Rails.application.secrets.algolia[:application_id],
    api_key: Rails.application.secrets.algolia[:api_key],
    connect_timeout: 2,
    receive_timeout: 30,
    send_timeout: 30,
    batch_timeout: 120,
    search_timeout: 5
  }
end
