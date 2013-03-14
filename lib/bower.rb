require 'bower/environment'

module Bower
  extend self

  def install
    environment.install
  end

  def update
    environment.update
  end

  def environment
    @environment ||= Bower::Environment.setup('.bowerrc')
  end

  require "bower/railtie" if defined?(::Rails)
end
