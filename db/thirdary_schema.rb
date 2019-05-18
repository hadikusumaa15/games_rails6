# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_14_201022) do

  create_table "fights", force: :cascade do |t|
    t.integer "hero_counter_id", null: false
    t.integer "hero_victim_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.string "description"
    t.string "studio"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "tips"
    t.string "specialty"
    t.integer "role_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "key"
    t.string "type"
    t.string "description"
    t.integer "hero_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "fights", "heros", column: "hero_counter_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "fights", "heros", column: "hero_victim_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "heros", "roles", on_update: :cascade, on_delete: :cascade
  add_foreign_key "skills", "heros", on_update: :cascade, on_delete: :cascade
end
