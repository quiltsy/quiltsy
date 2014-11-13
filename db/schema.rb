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

ActiveRecord::Schema.define(version: 20141113195113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "unaccent"
  enable_extension "pg_trgm"
  enable_extension "fuzzystrmatch"

  create_table "fabric_collections", force: true do |t|
    t.integer  "manufacturer_id"
    t.string   "name"
    t.string   "link"
    t.string   "designer"
    t.string   "material"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fabric_images", force: true do |t|
    t.integer  "fabric_id"
    t.string   "original"
    t.string   "mobile_1280"
    t.string   "mobile_960"
    t.string   "mobile_720"
    t.string   "mobile_480"
    t.string   "mobile_320"
    t.string   "mobile_160"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fabrics", force: true do |t|
    t.integer  "fabric_collection_id"
    t.string   "name"
    t.string   "manufacturer"
    t.string   "collection"
    t.string   "category"
    t.string   "designer"
    t.string   "material"
    t.string   "weight"
    t.string   "tags"
    t.string   "link"
    t.text     "description"
    t.text     "care"
    t.decimal  "width_in"
    t.decimal  "width_mm"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fabrics", ["category"], name: "fabrics_category", using: :gin
  add_index "fabrics", ["collection"], name: "fabrics_collection", using: :gin
  add_index "fabrics", ["designer"], name: "fabrics_designer", using: :gin
  add_index "fabrics", ["manufacturer"], name: "fabrics_manufacturer", using: :gin
  add_index "fabrics", ["material"], name: "fabrics_material", using: :gin
  add_index "fabrics", ["name"], name: "fabrics_name", using: :gin
  add_index "fabrics", ["tags"], name: "fabrics_tags", using: :gin

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username"
    t.string   "fullname"
    t.string   "location"
    t.string   "website"
    t.string   "avatar"
    t.string   "hero"
    t.string   "slug"
    t.text     "summary"
    t.boolean  "admin"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
