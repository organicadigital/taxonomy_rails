class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.references :taxon, index: true, null: false
      t.references :classifiable, polymorphic: true, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :classifications, :taxons
  end
end
