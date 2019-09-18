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

ActiveRecord::Schema.define(version: 2019_09_18_141017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clinic_reports", force: :cascade do |t|
    t.integer "current_state"
    t.integer "work_style"
    t.integer "number_of_clinics"
    t.integer "address_at_that_time"
    t.integer "number_of_aih"
    t.integer "treatment_start_age"
    t.integer "treatment_end_age"
    t.integer "treatment_period"
    t.integer "amh"
    t.integer "bmi"
    t.integer "types_of_eggs_and_sperm"
    t.integer "total_number_of_sairan"
    t.integer "number_of_eggs_collected"
    t.integer "total_number_of_transplants"
    t.integer "number_of_eggs_stored"
    t.integer "type_of_sairan_cycle"
    t.integer "types_of_fertilization_methods"
    t.integer "number_of_fertilized_eggs"
    t.integer "number_of_frozen_eggs"
    t.integer "cost"
    t.integer "credit_card_validity"
    t.integer "average_waiting_time"
    t.integer "clinic_selection_criteria"
    t.text "content"
    t.text "clinic_review"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string "clinic_name"
    t.string "clinic_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "prefecture_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "region_id"
    t.string "region_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "gender"
    t.string "icon"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
