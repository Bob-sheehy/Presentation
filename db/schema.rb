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

ActiveRecord::Schema.define(version: 20140327125829) do

  create_table "admin_users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deals", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",              precision: 8, scale: 2
    t.decimal  "value",              precision: 8, scale: 2
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "status"
    t.text     "terms"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "deal_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
    t.integer  "order_id"
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"
  add_index "line_items", ["deal_id"], name: "index_line_items_on_deal_id"

  create_table "newsletters", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "agree"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.decimal  "age"
    t.string   "gender"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "email"
    t.decimal  "phone"
    t.string   "status"
    t.text     "term_and_condition"
    t.string   "pay_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
