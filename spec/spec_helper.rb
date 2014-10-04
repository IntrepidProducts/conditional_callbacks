require 'bundler/setup'
Bundler.setup

require 'conditional_callbacks'

RSpec.configure do |config|
  config.color = true
  config.warnings = true
  config.formatter = 'documentation'
end
