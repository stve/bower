source 'https://rubygems.org'

gem 'rake'
gem 'yard'
gem 'multi_json'

group :development do
  gem 'kramdown'
end

group :test do
  gem 'json', :platforms => :ruby_18
  gem 'rspec-rails', '~> 3.1'
  gem 'capybara', '~> 2.0'
  gem 'jquery-rails'
  gem "sprockets", "~> 2.12"
  gem 'rails', '~> 4'
  gem "sqlite3", :platform => [:ruby, :mswin, :mingw]
  gem "jdbc-sqlite3", :platform => :jruby
  gem 'activerecord-jdbcsqlite3-adapter', :platform => :jruby
  gem 'generator_spec'
  gem 'simplecov', :require => false
end

gemspec
