require 'bower/environment'

module Bower
  def install
    environment.install
  end
  module_function :install

  def update
    environment.update
  end
  module_function :update

  def environment
    @environment ||= Bower::Environment.setup('.bowerrc')
  end
  module_function :environment

  require 'bower/railtie' if defined?(::Rails)
end
