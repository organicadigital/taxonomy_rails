class AddTaxonomyIdToClassification < ActiveRecord::Migration
  def change
    add_reference :classifications, :taxonomy, index: true
    add_foreign_key :classifications, :taxonomies
  end
end
