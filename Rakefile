
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.test_files = Dir["test/test_*.rb"]
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "rails_complete"
    gem.summary = "Bash completion for the rails command"
    gem.description = "Tab completion for the rails command-line tool."
    gem.email = "daniel.schierbeck@gmail.com"
    gem.homepage = "http://github.com/dasch/rails-complete"
    gem.authors = ["Daniel Schierbeck"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end
