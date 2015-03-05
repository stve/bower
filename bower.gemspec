# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bower/version'

Gem::Specification.new do |spec|
  spec.name        = 'bower'
  spec.version     = Bower::VERSION
  spec.homepage    = 'https://github.com/stve/bower'

  spec.author      = "Steve Agalloco"
  spec.email       = 'steve.agalloco@gmail.com'
  spec.description = 'Bower integration for your ruby projects.'
  spec.summary     = 'Bower integration for your ruby projects.'

  spec.files = %w(.yardopts CHANGELOG.md LICENSE.md README.md bower.gemspec) + Dir['lib/**/*.rb']
  spec.require_paths = ['lib']
end
