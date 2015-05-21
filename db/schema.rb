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

ActiveRecord::Schema.define(version: 20150521150042) do

  create_table "documents", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "acceptNull", limit: 1
    t.integer  "service_id", limit: 4
    t.integer  "type_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "documents", ["service_id"], name: "index_documents_on_service_id", using: :btree
  add_index "documents", ["type_id"], name: "index_documents_on_type_id", using: :btree

  create_table "ministries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "desc",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "order_documents", force: :cascade do |t|
    t.string   "value",       limit: 255
    t.integer  "document_id", limit: 4
    t.integer  "order_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "order_documents", ["document_id"], name: "index_order_documents_on_document_id", using: :btree
  add_index "order_documents", ["order_id"], name: "index_order_documents_on_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.string   "status",     limit: 255
    t.integer  "service_id", limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "orders", ["service_id"], name: "index_orders_on_service_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "ministry_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "services", ["ministry_id"], name: "index_services_on_ministry_id", using: :btree

  create_table "types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "address",    limit: 255
    t.string   "phone",      limit: 255
    t.string   "password",   limit: 255
    t.boolean  "isAdmin",    limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "documents", "services"
  add_foreign_key "documents", "types"
  add_foreign_key "order_documents", "documents"
  add_foreign_key "order_documents", "orders"
  add_foreign_key "orders", "services"
  add_foreign_key "orders", "users"
  add_foreign_key "services", "ministries"
end
