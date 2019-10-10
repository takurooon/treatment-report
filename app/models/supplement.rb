class Supplement < ApplicationRecord
  has_many :clinic_report_supplements, dependent: :destroy
  has_many :clinic_reports, through: :clinic_report_supplements
end
