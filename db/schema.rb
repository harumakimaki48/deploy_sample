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

ActiveRecord::Schema[7.2].define(version: 2024_09_01_141143) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shop_tags", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_tags_on_shop_id"
    t.index ["tag_id"], name: "index_shop_tags_on_tag_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.time "opening_time"
    t.time "closing_time"
    t.string "holiday"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops_tags", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shops_tags_on_shop_id"
    t.index ["tag_id"], name: "index_shops_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "shop_tags", "shops"
  add_foreign_key "shop_tags", "tags"
  add_foreign_key "shops_tags", "shops"
  add_foreign_key "shops_tags", "tags"
end
