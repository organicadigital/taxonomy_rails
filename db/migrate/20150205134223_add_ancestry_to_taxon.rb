class AddAncestryToTaxon < ActiveRecord::Migration
  def change
    add_column :taxons, :ancestry, :string
    add_index :taxons, :ancestry
  end
end
