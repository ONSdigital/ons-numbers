#!/usr/bin/env rake
# frozen_string_literal: true

require 'rake/testtask'
require_relative 'lib/ons-numbers/version'

task default: :test

desc 'Build the gem'
task build: [:test] do
  system('gem build ons-numbers.gemspec')
end

desc 'Push the gem to rubygems.org'
task release: [:build] do
  system("gem push ons-numbers-#{ONSNumbers::VERSION}.gem")
end

Rake::TestTask.new do |t|
  t.pattern = 'test/*_test.rb'
end
