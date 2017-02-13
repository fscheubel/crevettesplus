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

ActiveRecord::Schema.define(version: 20170213023944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menu_items", force: :cascade do |t|
    t.integer  "menu_id"
    t.string   "name"
    t.string   "description"
    t.decimal  "price",       precision: 20, scale: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["menu_id"], name: "index_menu_items_on_menu_id", using: :btree
    t.index ["name"], name: "index_menu_items_on_name", using: :btree
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.time     "active_start"
    t.time     "active_end"
    t.boolean  "is_default",   default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_foreign_key "menu_items", "menus"
end