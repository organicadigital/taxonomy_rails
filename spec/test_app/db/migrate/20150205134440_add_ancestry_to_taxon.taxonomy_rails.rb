# This migration comes from taxonomy_rails (originally 20150205134223)
class AddAncestryToTaxon < ActiveRecord::Migration
  def change
    add_column :taxons, :ancestry, :string
    add_index :taxons, :ancestry
  end
end
