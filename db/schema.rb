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

ActiveRecord::Schema.define(version: 2019_10_08_105325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "city_code"
    t.bigint "prefecture_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prefecture_id"], name: "index_cities_on_prefecture_id"
  end

  create_table "clinic_report_supplements", force: :cascade do |t|
    t.bigint "clinic_report_id", null: false
    t.bigint "supplement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinic_report_id"], name: "index_clinic_report_supplements_on_clinic_report_id"
    t.index ["supplement_id"], name: "index_clinic_report_supplements_on_supplement_id"
  end

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
    t.bigint "report_id", null: false
    t.bigint "clinic_id", null: false
    t.integer "EggMaturityLeadingToPregnancy"
    t.integer "EmbryoCultureDayLeadingToPregnancy"
    t.integer "EmbryoGradeLeadingToPregnancy"
    t.index ["clinic_id"], name: "index_clinic_reports_on_clinic_id"
    t.index ["report_id"], name: "index_clinic_reports_on_report_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string "clinic_name"
    t.string "clinic_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "prefecture_id", null: false
    t.integer "jsog_code"
    t.integer "postal_code"
    t.index ["prefecture_id"], name: "index_clinics_on_prefecture_id"
  end

  create_table "female_diseases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "female_funins", force: :cascade do |t|
    t.bigint "clinic_report_id", null: false
    t.bigint "female_infertility_factor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinic_report_id"], name: "index_female_funins_on_clinic_report_id"
    t.index ["female_infertility_factor_id"], name: "index_female_funins_on_female_infertility_factor_id"
  end

  create_table "female_infertility_factors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "female_surgeries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "male_diseases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "male_funins", force: :cascade do |t|
    t.bigint "clinic_report_id", null: false
    t.bigint "male_infertility_factor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinic_report_id"], name: "index_male_funins_on_clinic_report_id"
    t.index ["male_infertility_factor_id"], name: "index_male_funins_on_male_infertility_factor_id"
  end

  create_table "male_infertility_factors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "male_surgeries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ovarian_stimulants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ovulation_inducers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ovulation_inhibitors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "porting_options", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "region_id"
    t.string "region_name"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "how_manieth_fertility_treatments"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "supplements", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "wards", force: :cascade do |t|
    t.string "name"
    t.integer "ward_code"
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_wards_on_city_id"
  end

  add_foreign_key "cities", "prefectures"
  add_foreign_key "clinic_report_supplements", "clinic_reports"
  add_foreign_key "clinic_report_supplements", "supplements"
  add_foreign_key "clinic_reports", "clinics"
  add_foreign_key "clinic_reports", "reports"
  add_foreign_key "clinics", "prefectures"
  add_foreign_key "female_funins", "clinic_reports"
  add_foreign_key "female_funins", "female_infertility_factors"
  add_foreign_key "male_funins", "clinic_reports"
  add_foreign_key "male_funins", "male_infertility_factors"
  add_foreign_key "reports", "users"
  add_foreign_key "wards", "cities"
end
