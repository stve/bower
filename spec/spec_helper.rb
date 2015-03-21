# encoding: utf-8
unless ENV['CI']
  require 'simplecov'
  SimpleCov.start do
    add_filter '.bundle'
    add_filter 'spec/dummy'
    add_group 'Bower', 'lib/bower'
    add_group 'Specs', 'spec'
  end
end

ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../dummy/config/environment.rb',  __FILE__)
require 'bower'
require 'rspec/rails'
require 'capybara/rspec'

require 'generator_spec/test_case'
require 'active_support'
require 'active_support/core_ext/class/attribute_accessors'

# For generators
require 'rails/generators/test_case'
require 'generators/bower/install_generator'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
end

def fixture_path
  @_fixture_path ||= File.join(File.dirname(__FILE__), 'fixtures')
end
