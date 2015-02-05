class ChangeTaxonTaxonomyIdColumn < ActiveRecord::Migration
  def up
    change_column :taxons, :taxonomy_id, :integer, null: false
  end

  def down
    change_column :taxons, :taxonomy_id, :integer, null: true
  end
end
