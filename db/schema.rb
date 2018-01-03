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

ActiveRecord::Schema.define(version: 20180103105733) do

  create_table "add_texts", force: :cascade do |t|
    t.text "text"
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
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
  end

  create_table "upload_logos", force: :cascade do |t|
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
