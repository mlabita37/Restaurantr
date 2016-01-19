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

ActiveRecord::Schema.define(version: 20160104010716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "firstname"
    t.string   "lastname"
    t.text     "address1"
    t.text     "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone_number"
    t.string   "job_title"
    t.boolean  "is_admin",        default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.date     "dob"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "party_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "quantity"
    t.text     "note"
  end

  add_index "orders", ["item_id"], name: "index_orders_on_item_id", using: :btree
  add_index "orders", ["party_id"], name: "index_orders_on_party_id", using: :btree

  create_table "parties", force: :cascade do |t|
    t.integer  "guest_total"
    t.integer  "top_number"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "is_paid",     default: false
    t.string   "name"
    t.boolean  "euro",        default: false
  end

  add_foreign_key "orders", "items"
  add_foreign_key "orders", "parties"
end
