class ClinicReport < ApplicationRecord
  belongs_to :report
  belongs_to :clinic

  has_many :clinic_report_supplements, dependent: :destroy
  has_many :supplements, through: :clinic_report_supplements

  has_many :female_funins, dependent: :destroy
  has_many :female_infertility_factors, through: :female_funins

  has_many :male_funins, dependent: :destroy
  has_many :male_infertility_factors, through: :male_funins

  has_many :female_shikkans, dependent: :destroy
  has_many :female_diseases, through: :female_shikkans

  has_many :male_shikkans, dependent: :destroy
  has_many :male_diseases, through: :male_shikkans

  has_many :female_syujutsus, dependent: :destroy
  has_many :female_surgeries, through: :female_syujutsus

  has_many :male_syujutsus, dependent: :destroy
  has_many :male_surgeries, through: :male_syujutsus

  has_many :ranso_shigekis, dependent: :destroy
  has_many :ovarian_stimulants, through: :ranso_shigekis

  has_many :hairan_yokuseis, dependent: :destroy
  has_many :ovulation_inhibitors, through: :hairan_yokuseis

  has_many :hairan_yuhatsus, dependent: :destroy
  has_many :ovulation_inducers, through: :hairan_yuhatsus

  has_many :isyoku_options, dependent: :destroy
  has_many :porting_options, through: :isyoku_options
end

# == Schema Information
#
# Table name: clinic_reports
#
#  id                             :bigint           not null, primary key
#  address_at_that_time           :integer
#  amh                            :integer
#  average_waiting_time           :integer
#  bmi                            :integer
#  clinic_review                  :text
#  clinic_selection_criteria      :integer
#  content                        :text
#  cost                           :integer
#  credit_card_validity           :integer
#  current_state                  :integer
#  number_of_aih                  :integer
#  number_of_clinics              :integer
#  number_of_eggs_collected       :integer
#  number_of_eggs_stored          :integer
#  number_of_fertilized_eggs      :integer
#  number_of_frozen_eggs          :integer
#  total_number_of_sairan         :integer
#  total_number_of_transplants    :integer
#  treatment_end_age              :integer
#  treatment_period               :integer
#  treatment_start_age            :integer
#  type_of_sairan_cycle           :integer
#  types_of_eggs_and_sperm        :integer
#  types_of_fertilization_methods :integer
#  work_style                     :integer
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  clinic_id                      :bigint           not null
#  report_id                      :bigint           not null
#
# Indexes
#
#  index_clinic_reports_on_clinic_id  (clinic_id)
#  index_clinic_reports_on_report_id  (report_id)
#
# Foreign Keys
#
#  fk_rails_...  (clinic_id => clinics.id)
#  fk_rails_...  (report_id => reports.id)
#
