class TaxonomyRailsGenerator < Rails::Generators::Base
  source_root File.expand_path('../../templates', __FILE__)

  namespace 'taxonomy_rails'

  def install
    rake 'taxonomy_rails:install:migrations'
  end
end
