class ClinicReportFemaleDisease < ApplicationRecord
  belongs_to :clinic_report
  belongs_to :female_diseases
end
