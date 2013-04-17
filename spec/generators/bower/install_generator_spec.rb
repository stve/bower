require 'spec_helper'

describe Bower::Generators::InstallGenerator do
  include GeneratorSpec::TestCase

  destination File.expand_path("../../../tmp", __FILE__)

  before do
    prepare_destination
    run_generator
  end

  it 'creates a component directory' do
    assert_directory 'bower_components'
  end

  it "creates a template component.json" do
    assert_file "bower.json"
  end

  it "creates a configuration file" do
    assert_file ".bowerrc"
  end
end
