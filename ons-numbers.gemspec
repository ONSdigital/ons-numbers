# frozen_string_literal: true

require 'date'

require_relative 'lib/ons-numbers/version'

Gem::Specification.new do |s|
  s.name                  = 'ons-numbers'
  s.version               = ONSNumbers::VERSION
  s.date                  = Date.today.to_s
  s.summary               = 'A number formatting library.'
  s.description           = <<~DESC
    A utility class for formatting numbers in common ways.
  DESC
  s.authors               = ['John Topley']
  s.email                 = ['john.topley@ons.gov.uk']
  s.files                 = ['README.md']
  s.files                += Dir['lib/**/*.rb']
  s.homepage              = 'https://github.com/ONSdigital/ons-numbers'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 3.0.0'

  s.add_development_dependency 'bundler', '~> 2.3'
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rubocop', '~> 1.17'
end
