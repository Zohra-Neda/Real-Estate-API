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
    t.integer "agents_id"
    t.index ["agents_id"], name: "index_houses_on_agents_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "houses_id"
    t.index ["houses_id"], name: "index_users_on_houses_id"
  end

  add_foreign_key "houses", "agents", column: "agents_id"
  add_foreign_key "users", "houses", column: "houses_id"
end
