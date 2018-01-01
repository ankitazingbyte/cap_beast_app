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

ActiveRecord::Schema.define(version: 20180101101010) do

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

end
