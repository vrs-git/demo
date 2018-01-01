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

ActiveRecord::Schema.define(version: 20180101204536) do

  create_table "categories", force: :cascade do |t|
    t.string   "category_name",          null: false
    t.boolean  "cat_status",             null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "cat_photo_file_name",    null: false
    t.string   "cat_photo_content_type", null: false
    t.integer  "cat_photo_file_size",    null: false
    t.datetime "cat_photo_updated_at",   null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "phnumber"
  end

  add_index "owners", ["email"], name: "index_owners_on_email", unique: true
  add_index "owners", ["phnumber"], name: "index_owners_on_phnumber", unique: true
  add_index "owners", ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true

  create_table "products", force: :cascade do |t|
    t.string   "product_name",         null: false
    t.integer  "MRP",                  null: false
    t.integer  "SP",                   null: false
    t.integer  "discount",             null: false
    t.boolean  "active",               null: false
    t.boolean  "instock",              null: false
    t.string   "warranty_summary",     null: false
    t.string   "highlights",           null: false
    t.string   "imp_note"
    t.integer  "owner_id",             null: false
    t.integer  "category_id",          null: false
    t.string   "seller_name",          null: false
    t.text     "full_desp",            null: false
    t.string   "specification",        null: false
    t.string   "installation"
    t.integer  "unit_in_order",        null: false
    t.integer  "unit_in_stock",        null: false
    t.integer  "unit_length",          null: false
    t.integer  "unit_bredth",          null: false
    t.integer  "unit_height",          null: false
    t.integer  "unit_weight",          null: false
    t.text     "additional_features"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "image_1_file_name",    null: false
    t.string   "image_1_content_type", null: false
    t.integer  "image_1_file_size",    null: false
    t.datetime "image_1_updated_at",   null: false
    t.string   "image_2_file_name",    null: false
    t.string   "image_2_content_type", null: false
    t.integer  "image_2_file_size",    null: false
    t.datetime "image_2_updated_at",   null: false
    t.string   "image_3_file_name",    null: false
    t.string   "image_3_content_type", null: false
    t.integer  "image_3_file_size",    null: false
    t.datetime "image_3_updated_at",   null: false
    t.string   "image_4_file_name"
    t.string   "image_4_content_type"
    t.integer  "image_4_file_size"
    t.datetime "image_4_updated_at"
    t.string   "image_5_file_name"
    t.string   "image_5_content_type"
    t.integer  "image_5_file_size"
    t.datetime "image_5_updated_at"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"
  add_index "products", ["owner_id"], name: "index_products_on_owner_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "phnumber"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["phnumber"], name: "index_users_on_phnumber", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
