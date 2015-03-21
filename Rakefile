require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task test: :spec

require 'rubocop/rake_task'
RuboCop::RakeTask.new

require 'yard'
YARD::Rake::YardocTask.new do |task|
  task.files   = ['LICENSE.md', 'lib/**/*.rb']
  task.options = ['--markup', 'markdown']
end


task default: [:spec, :rubocop]
