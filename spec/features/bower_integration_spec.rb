require 'spec_helper'

describe "usage", :type => :feature do
  # let(:dummy_path) { File.expand_path('../../dummy', __FILE__) }
  # let(:components_path) { File.join(dummy_path, 'components') }

  # before do
  #   Dir.chdir(dummy_path) do
  #     `bower install`
  #   end
  # end

  # after do
  #   Dir.entries(components_path).select do |entry|
  #     if File.directory? File.join(components_path, entry) and !(entry =='.' || entry == '..')
  #       FileUtils.rm_rf(File.join(components_path, entry))
  #     end
  #   end
  # end

  it "includes bower assets via Sprockets" do
    visit '/assets/application.js'
    page.should have_content("Coolio = {};")
  end
end
