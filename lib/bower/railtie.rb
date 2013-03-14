require 'bower'
require 'rails'

module Bower
  class Railtie < Rails::Railtie
    initializer 'bower' do |app|
      app.config.assets.paths << Rails.root.join(Bower.environment.directory)
    end
  end
end
