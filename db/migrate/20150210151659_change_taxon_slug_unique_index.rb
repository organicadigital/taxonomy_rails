class ChangeTaxonSlugUniqueIndex < ActiveRecord::Migration
  def up
    remove_index :taxons, :slug
    add_index :taxons, [:slug, :ancestry], unique: true
  end

  def down
    remove_index :taxons, [:slug, :ancestry]
    add_index :taxons, :slug, unique: true
  end
end
