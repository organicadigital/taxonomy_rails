$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'taxonomy_rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'taxonomy_rails'
  s.version     = TaxonomyRails::VERSION
  s.authors     = ['Orgânica Digital']
  s.email       = ['contato@organicadigital.com']
  s.homepage    = 'https://github.com/organicadigital/taxonomy_rails'
  s.summary     = 'A simple taxonomy hierarchy for use in Rails projects.'
  s.description = 'A simple taxonomy hierarchy for use in Rails projects.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 4.2.0'
  s.add_dependency 'ancestry', '~> 2.1.0'
  s.add_dependency 'friendly_id', '~> 5.1.0'

  s.add_development_dependency 'mysql2', '~> 0.3.17'
end
