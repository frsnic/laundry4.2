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

ActiveRecord::Schema.define(version: 20150111155252) do

  create_table "cloths", force: :cascade do |t|
    t.integer  "store_id",   limit: 4
    t.string   "name",       limit: 255
    t.string   "unit",       limit: 255
    t.string   "code",       limit: 255
    t.integer  "price_dry",  limit: 4
    t.integer  "price_wash", limit: 4
    t.integer  "price_iron", limit: 4
    t.integer  "price_else", limit: 4
    t.integer  "day_dry",    limit: 4
    t.integer  "day_wash",   limit: 4
    t.integer  "day_iron",   limit: 4
    t.integer  "day_else",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_item_lists", force: :cascade do |t|
    t.integer  "order_item_id",  limit: 4
    t.string   "method",         limit: 255
    t.integer  "price",          limit: 4
    t.integer  "price_extra",    limit: 4
    t.integer  "price_discount", limit: 4
    t.datetime "day_in"
    t.datetime "day_done"
    t.datetime "day_out"
    t.string   "annotate",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id",   limit: 4
    t.integer  "cloth_id",   limit: 4
    t.integer  "quantity",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "store_id",   limit: 4
    t.integer  "sum",        limit: 4
    t.string   "annotate",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_users", force: :cascade do |t|
    t.integer  "store_id",   limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "address",    limit: 255
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "annotate",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.integer  "role",                   limit: 4
    t.string   "email",                  limit: 255,   default: "",                   null: false
    t.boolean  "sex",                    limit: 1
    t.text     "phone",                  limit: 65535
    t.text     "landline",               limit: 65535
    t.text     "address",                limit: 65535
    t.integer  "balance",                limit: 4
    t.string   "discount",               limit: 255,   default: "100, 100, 100, 100"
    t.text     "annotate",               limit: 65535
    t.string   "encrypted_password",     limit: 255,   default: "",                   null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,                    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
