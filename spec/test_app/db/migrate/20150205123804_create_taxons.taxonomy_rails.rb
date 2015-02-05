# This migration comes from taxonomy_rails (originally 20150205123059)
class CreateTaxons < ActiveRecord::Migration
  def change
    create_table :taxons do |t|
      t.references :taxonomy, index: true
      t.string :name, null: false

      t.timestamps null: false
    end
    add_foreign_key :taxons, :taxonomies
  end
end
