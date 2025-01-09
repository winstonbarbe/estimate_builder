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

ActiveRecord::Schema[8.0].define(version: 2025_01_09_142644) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "artist"
    t.string "title"
    t.string "catalog_number"
    t.string "eb_number"
    t.string "google_drive_url"
    t.string "customer"
    t.date "in_hand_date"
    t.integer "units_ordered"
    t.integer "sides"
    t.integer "discs"
    t.string "format"
    t.integer "speed"
    t.string "matrix"
    t.string "weight"
    t.string "center_label"
    t.string "jacket_type"
    t.string "jacket_finish"
    t.string "inner_sleeve_one"
    t.string "inner_sleeve_one_finish"
    t.string "insert_type"
    t.string "insert_color"
    t.string "insert_finish"
    t.string "outerwear"
    t.integer "test_pressing_quantity"
    t.string "inner_sleeve_two"
    t.string "inner_sleeve_two_finish"
    t.string "disc_one_base_color"
    t.string "barcode"
    t.string "barcode_sticker"
    t.boolean "download_cards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
