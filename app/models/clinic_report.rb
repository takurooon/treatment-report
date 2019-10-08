class ClinicReport < ApplicationRecord
  belongs_to :report
  belongs_to :clinic
  has_many :clinic_report_suppliments, dependent: :destroy
  has_many :supplements, through: :clinic_report_suppliments
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
