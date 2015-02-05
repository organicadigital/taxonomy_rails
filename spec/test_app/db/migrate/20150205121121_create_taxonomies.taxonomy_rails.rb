# This migration comes from taxonomy_rails (originally 20150205120330)
class CreateTaxonomies < ActiveRecord::Migration
  def change
    create_table :taxonomies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
