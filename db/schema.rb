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

ActiveRecord::Schema.define(version: 20180113121235) do

  create_table "add_texts", force: :cascade do |t|
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "address"
    t.integer "zip_code"
    t.string "city"
    t.string "country"
    t.string "state"
    t.integer "phone"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brand_customsnapbacks", force: :cascade do |t|
    t.integer "brand_id"
    t.integer "custom_snapback_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands_custom_snapbacks", id: false, force: :cascade do |t|
    t.integer "brand_id", null: false
    t.integer "custom_snapback_id", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "street_address"
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "postal_code"
    t.integer "phone"
    t.string "logo"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custom_athletic_hats", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_beanies", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_bucket_hats", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_camo_hats", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_fitted_hats", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_golf_hats", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_military_hats", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_panel_hats", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_snapbacks", force: :cascade do |t|
    t.string "image"
    t.string "back_image"
    t.string "right_image"
    t.string "left_image"
    t.string "logo"
    t.string "title"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "text"
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_strapback_hats", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "custom_trucker_hats", force: :cascade do |t|
    t.string "title"
    t.string "logo"
    t.string "image"
    t.string "back_image"
    t.string "left_image"
    t.string "right_image"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_detail"
    t.integer "brand_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "quantity"
    t.float "unit_price"
    t.float "total_price"
    t.integer "order_id"
    t.integer "custom_snapback_id"
    t.integer "custom_strapback_hat_id"
    t.integer "custom_trucker_hat_id"
    t.integer "custom_panel_hat_id"
    t.integer "custom_military_hat_id"
    t.integer "custom_golf_hat_id"
    t.integer "custom_fitted_hat_id"
    t.integer "custom_camo_hat_id"
    t.integer "custom_bucket_hat_id"
    t.integer "custom_beanie_id"
    t.integer "custom_athletic_hat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["custom_athletic_hat_id"], name: "index_order_items_on_custom_athletic_hat_id"
    t.index ["custom_beanie_id"], name: "index_order_items_on_custom_beanie_id"
    t.index ["custom_bucket_hat_id"], name: "index_order_items_on_custom_bucket_hat_id"
    t.index ["custom_camo_hat_id"], name: "index_order_items_on_custom_camo_hat_id"
    t.index ["custom_fitted_hat_id"], name: "index_order_items_on_custom_fitted_hat_id"
    t.index ["custom_golf_hat_id"], name: "index_order_items_on_custom_golf_hat_id"
    t.index ["custom_military_hat_id"], name: "index_order_items_on_custom_military_hat_id"
    t.index ["custom_panel_hat_id"], name: "index_order_items_on_custom_panel_hat_id"
    t.index ["custom_snapback_id"], name: "index_order_items_on_custom_snapback_id"
    t.index ["custom_strapback_hat_id"], name: "index_order_items_on_custom_strapback_hat_id"
    t.index ["custom_trucker_hat_id"], name: "index_order_items_on_custom_trucker_hat_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.float "total"
    t.float "sub_total"
    t.integer "order_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "survey_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shippings", force: :cascade do |t|
    t.string "standard"
    t.string "express"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upload_logos", force: :cascade do |t|
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "postal_code"
    t.integer "phone"
    t.string "logo"
    t.string "details"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
