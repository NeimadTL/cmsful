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

ActiveRecord::Schema.define(version: 2020_07_02_010231) do

  create_table "user_attribute_values", force: :cascade do |t|
    t.integer "user_attribute_id", null: false
    t.integer "user_id", null: false
    t.string "value", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_attribute_id", "user_id"], name: "index_user_attribute_values_on_user_attribute_id_and_user_id", unique: true
    t.index ["user_attribute_id"], name: "index_user_attribute_values_on_user_attribute_id"
    t.index ["user_id"], name: "index_user_attribute_values_on_user_id"
  end

  create_table "user_attributes", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.boolean "required", default: false, null: false
    t.string "type", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
