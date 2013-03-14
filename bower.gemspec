# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bower/version'

Gem::Specification.new do |gem|
  gem.name        = 'bower'
  gem.version     = Bower::VERSION
  gem.homepage    = 'https://github.com/spagalloco/bower'

  gem.author      = "Steve Agalloco"
  gem.email       = 'steve.agalloco@gmail.com'
  gem.description = 'Bower integration for your ruby projects.'
  gem.summary     = 'Bower integration for your ruby projects.'

  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.require_paths = ['lib']
end
