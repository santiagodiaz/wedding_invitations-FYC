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

ActiveRecord::Schema[7.2].define(version: 2024_12_09_201953) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.boolean "attending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.boolean "partner", default: false, null: false
    t.string "partners_name", default: [], null: false, array: true
    t.boolean "children_attending", default: false, null: false
    t.integer "children_quantity", default: 0, null: false
    t.boolean "assist_church", default: false, null: false
    t.boolean "dietary_restrictions", default: false, null: false
    t.string "dietary_restrictions_indications"
    t.string "other_food_preference"
    t.text "message"
  end
end
