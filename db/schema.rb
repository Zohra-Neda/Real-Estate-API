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

ActiveRecord::Schema[7.0].define(version: 2024_01_04_100214) do
  create_table "agents", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "house_type"
    t.string "name"
    t.text "description"
    t.string "image"
    t.string "image_lg"
    t.string "country"
    t.string "address"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.string "surface"
    t.string "year"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.integer "agent_id"
    t.index ["agent_id"], name: "index_houses_on_agent_id"
    t.index ["users_id"], name: "index_houses_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "houses", "agents"
  add_foreign_key "houses", "users", column: "users_id"
end
