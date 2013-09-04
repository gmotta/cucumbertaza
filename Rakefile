require 'rubygems'
require 'taza/tasks'
require 'cucumber'
require 'cucumber/rake/task'

Taza::Rake::Tasks.new do |t|
  file_hole = FileUtils.mkdir_p "artifacts/#{Time.now.to_i}"
  t.spec_opts = ["--require taza",
                 "--format html --out #{file_hole}/index.html",
                 #"--format p", #changed this to nested for presentation
                 "--format nested",
                 "--color",
                 "--format FailingExamplesFormatter --out #{file_hole}/failing_examples.txt"]
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

task :default => :features