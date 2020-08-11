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

ActiveRecord::Schema.define(version: 2020_08_11_135859) do

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.string "effect"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "armours", force: :cascade do |t|
    t.string "name"
    t.integer "soak"
    t.integer "agility_penalty"
    t.string "abilities"
    t.integer "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.string "range"
    t.integer "attacks"
    t.string "damage"
    t.string "abilities"
    t.string "description"
    t.string "strength"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cost"
    t.string "category"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warbands", force: :cascade do |t|
    t.string "name"
    t.string "warband_type"
    t.integer "user_id"
    t.integer "gold_crowns", default: 500
    t.integer "warband_rating", default: 0
    t.integer "wyrdstone_shards", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warbands_equipment", force: :cascade do |t|
    t.integer "warband_id"
    t.integer "equipment_id"
  end

  create_table "warriors", force: :cascade do |t|
    t.string "name"
    t.string "warrior_type"
    t.integer "warband_id"
    t.integer "exp"
    t.integer "move"
    t.integer "strength"
    t.integer "toughness"
    t.integer "agility"
    t.integer "wounds"
    t.integer "bravery"
    t.string "skills"
    t.string "injuries"
    t.boolean "active"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "warband_type"
    t.boolean "is_hero", default: false
    t.integer "cost"
  end

  create_table "warriors_armours", force: :cascade do |t|
    t.string "warrior_id"
    t.string "armour_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warriors_equipments", force: :cascade do |t|
    t.integer "warrior_id"
    t.integer "equipment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
