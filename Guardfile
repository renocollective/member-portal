# frozen_string_literal: true

directories %w[app config db lib test]

guard :minitest, spring: 'bundle exec rails test' do
  watch(%r{^app/(.+)\.rb$}) { |m| "test/#{m[1]}_test.rb" }
  watch(%r{^test/(.*)\/?(.*)_test\.rb$})
  watch(%r{^lib/(.*/)?([^/]+)\.rb$}) { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  watch(%r{^test/test_helper\.rb$}) { 'test' }
end

guard :rubocop do
  watch(/.+\.rb$/)
  watch(%r{(?:.+/)?\.rubocop(?:_todo)?\.yml$}) { |m| File.dirname(m[0]) }
end
