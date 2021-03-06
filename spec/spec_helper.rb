require 'bundler/setup'
require 'salesforce-orm'
require 'byebug'
require 'nulldb_rspec'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  NULL_DB_OPTIONS = {schema: "./spec/fixtures/schema.rb"}
end

