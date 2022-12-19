# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_16_125923) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.string "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", id: :bigint, default: nil, force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "books", primary_key: "isbn", id: :string, force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "pubcom"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", primary_key: "custid", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.index ["custid"], name: "index_customers_on_custid", unique: true
  end

  create_table "orderdetails", force: :cascade do |t|
    t.integer "detnum"
    t.integer "amount"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "orders_id"
    t.string "books_id"
    t.index ["books_id"], name: "index_orderdetails_on_books_id"
    t.index ["orders_id"], name: "index_orderdetails_on_orders_id"
  end

  create_table "orders", primary_key: "order_id", force: :cascade do |t|
    t.date "transdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "store_id"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["store_id"], name: "index_orders_on_store_id"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.text "content"
    t.datetime "datecomp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_questionnaires_on_customer_id"
  end

  create_table "storages", force: :cascade do |t|
    t.integer "stornum"
    t.string "block"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stores_id"
    t.string "books_id"
    t.index ["books_id"], name: "index_storages_on_books_id"
    t.index ["stores_id"], name: "index_storages_on_stores_id"
  end

  create_table "stores", primary_key: "storeid", force: :cascade do |t|
    t.string "storename"
    t.string "mail"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["storeid"], name: "index_stores_on_storeid", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
