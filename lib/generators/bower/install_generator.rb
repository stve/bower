require 'securerandom'

module Bower
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a Devise initializer and copy locale files to your application."

      def create_components_directory
        empty_directory 'components/javascripts'
      end

      def copy_component_json
        copy_file 'component.json', 'components/javascripts/component.json'
      end

      def copy_config
        copy_file "bowerrc", ".bowerrc"
      end
    end
  end
end
