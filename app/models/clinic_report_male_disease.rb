class ClinicReportMaleDisease < ApplicationRecord
  belongs_to :clinic_report
  belongs_to :male_disease
end
