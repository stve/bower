require 'securerandom'

module Bower
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      desc 'Creates a local configuration file and the default JSON file for Bower to use in your application.'

      def create_components_directory
        empty_directory 'bower_components'
      end

      def copy_component_json
        copy_file 'bower.json', 'bower.json'
      end

      def copy_config
        copy_file 'bowerrc', '.bowerrc'
      end
    end
  end
end
