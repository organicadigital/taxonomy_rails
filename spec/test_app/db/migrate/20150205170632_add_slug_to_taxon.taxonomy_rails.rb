# This migration comes from taxonomy_rails (originally 20150205164502)
class AddSlugToTaxon < ActiveRecord::Migration
  def up
    transaction do
      add_column :taxons, :slug, :string

      Taxon.all.each do |taxon|
        taxon.save!
      end

      change_column :taxons, :slug, :string, null: false
      add_index :taxons, :slug, unique: true
    end
  end

  def down
    remove_index :taxons, :slug
    remove_column :taxons, :slug
  end
end
