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

ActiveRecord::Schema[7.0].define(version: 2023_05_31_144613) do
  create_table "breakers", force: :cascade do |t|
    t.integer "amperage"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "slot"
    t.string "label"
  end

  create_table "outlets", force: :cascade do |t|
    t.string "type"
    t.boolean "is_gfci"
    t.integer "location_x"
    t.integer "location_y"
    t.integer "location_z"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rooms_id", null: false
    t.integer "breakers_id", null: false
    t.index ["breakers_id"], name: "index_outlets_on_breakers_id"
    t.index ["rooms_id"], name: "index_outlets_on_rooms_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "height"
    t.integer "width"
    t.integer "length"
  end

  add_foreign_key "outlets", "breakers", column: "breakers_id"
  add_foreign_key "outlets", "rooms", column: "rooms_id"
end
