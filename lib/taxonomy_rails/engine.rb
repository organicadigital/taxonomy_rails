module TaxonomyRails
  class Engine < ::Rails::Engine
    engine_name :taxonomy_rails

    config.generators do |g|
      g.test_framework false
    end
  end
end
