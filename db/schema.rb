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

ActiveRecord::Schema.define(version: 2020_12_05_180247) do

  create_table "addresses", force: :cascade do |t|
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "address_line_3"
    t.string "city"
    t.string "postal_code"
    t.string "state"
    t.string "country"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pizza_promises", force: :cascade do |t|
    t.string "post_id"
    t.integer "fulfilled_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pizza_requests", force: :cascade do |t|
    t.string "post_id"
    t.string "owner_reddit_id"
    t.string "title"
    t.string "description"
    t.integer "fulfilled_by"
    t.integer "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "username", null: false
    t.string "reddit_id", null: false
    t.string "access_token", null: false
    t.string "refresh_token", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.index ["reddit_id"], name: "index_users_on_reddit_id"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
