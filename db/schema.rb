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

ActiveRecord::Schema[7.0].define(version: 2023_06_07_151609) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "room_id", null: false
    t.bigint "breaker_id", null: false
    t.index ["breaker_id"], name: "index_outlets_on_breaker_id"
    t.index ["room_id"], name: "index_outlets_on_room_id"
  end

  create_table "room_connections", force: :cascade do |t|
    t.bigint "room_a_id_id", null: false
    t.bigint "room_b_id_id", null: false
    t.integer "room_a_x_position"
    t.integer "room_b_x_postion"
    t.integer "room_a_y_position"
    t.integer "room_b_y_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_a_id_id"], name: "index_room_connections_on_room_a_id_id"
    t.index ["room_b_id_id"], name: "index_room_connections_on_room_b_id_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "z_size"
    t.integer "x_size"
    t.integer "y_size"
    t.string "label"
    t.integer "floor"
  end

  add_foreign_key "outlets", "breakers"
  add_foreign_key "outlets", "rooms"
  add_foreign_key "room_connections", "rooms", column: "room_a_id_id"
  add_foreign_key "room_connections", "rooms", column: "room_b_id_id"
end
