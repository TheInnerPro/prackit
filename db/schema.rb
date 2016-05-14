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

ActiveRecord::Schema.define(version: 20160514191939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "v_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_types_vendors", id: false, force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.integer "v_type_id", null: false
  end

  add_index "v_types_vendors", ["v_type_id", "vendor_id"], name: "index_v_types_vendors_on_v_type_id_and_vendor_id", unique: true, using: :btree

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
    t.string   "logo"
  end

end
