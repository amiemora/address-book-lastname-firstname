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

ActiveRecord::Schema[7.0].define(version: 2022_12_15_191718) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "person_id"
    t.string "street", null: false
    t.string "town", null: false
    t.integer "zip", null: false
    t.string "state"
    t.string "country", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "people_id"
    t.index ["people_id"], name: "index_addresses_on_people_id"
  end

  create_table "emails", force: :cascade do |t|
    t.integer "person_id"
    t.string "email_address", null: false
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "people_id"
    t.index ["people_id"], name: "index_emails_on_people_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "salutation"
    t.string "first_name", null: false
    t.string "middle_name"
    t.string "last_name", null: false
    t.string "ssn"
    t.date "dob"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "people"
  add_foreign_key "emails", "people"
end
