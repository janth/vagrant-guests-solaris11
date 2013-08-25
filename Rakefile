# encoding: utf-8

# Immediately sync all stdout so that tools like buildbot can immediately load in the output.
$stdout.sync = true
$stderr.sync = true

# Change to the directory of this file.
Dir.chdir(File.expand_path("../", __FILE__))

require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'bundler/setup'

# For gem creation and bundling
require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require 'rake'
require 'rake/clean'
require 'rake/version_task'
Rake::VersionTask.new

# This installs the tasks that help with gem creation and publishing.
Bundler::GemHelper.install_tasks


# Install the `spec` task so that we can run tests.
RSpec::Core::RakeTask.new

# Default task is to run the unit tests
task :default => "spec"
