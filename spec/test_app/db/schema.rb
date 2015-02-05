# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150205161827) do

  create_table "classifications", force: :cascade do |t|
    t.integer  "taxon_id",          limit: 4,   null: false
    t.integer  "classifiable_id",   limit: 4,   null: false
    t.string   "classifiable_type", limit: 255, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "classifications", ["classifiable_type", "classifiable_id"], name: "index_classifications_on_classifiable_type_and_classifiable_id", using: :btree
  add_index "classifications", ["taxon_id"], name: "index_classifications_on_taxon_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "taxonomies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "taxons", force: :cascade do |t|
    t.integer  "taxonomy_id", limit: 4,   null: false
    t.string   "name",        limit: 255, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "ancestry",    limit: 255
  end

  add_index "taxons", ["ancestry"], name: "index_taxons_on_ancestry", using: :btree
  add_index "taxons", ["taxonomy_id"], name: "index_taxons_on_taxonomy_id", using: :btree

  add_foreign_key "classifications", "taxons"
  add_foreign_key "taxons", "taxonomies"
end
