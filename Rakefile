# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically
# be available to Rake.

require_relative 'config/application'
require 'bundler/audit/task'
require 'rubocop/rake_task'

Rails.application.load_tasks

# Provide `bundle:audit` task
Bundler::Audit::Task.new

RuboCop::RakeTask.new

task default: %i[rubocop spec]
