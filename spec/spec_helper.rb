require 'simplecov'
SimpleCov.start

require 'bundler/setup'
require 'angular_rails_xss'

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'tmp/.rspec'

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
