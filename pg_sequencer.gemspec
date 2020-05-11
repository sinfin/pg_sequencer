# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'pg_sequencer/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'pg_sequencer'
  s.version     = PgSequencer::VERSION
  s.authors     = ['Tony Collen']
  s.email       = ['tonyc@code42.com']
  s.homepage    = 'https://github.com/code42/pg_sequencer/'
  s.summary     = 'Manage postgres sequences in Rails migrations'
  s.description = 'Sequences need some love. pg_sequencer teaches Rails what sequences are, and will dump them to schema.rb, and also lets you create/drop sequences in migrations.'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  # s.add_dependency "rails", "~> 3.1.0"
  s.add_dependency 'activerecord', '>= 3.0.0'
  s.add_development_dependency 'pg', '0.11.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'shoulda-context'
  s.add_development_dependency 'pry'
end
