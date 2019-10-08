class ClinicReportFemaleSurgery < ApplicationRecord
  belongs_to :clinic_report
  belongs_to :female_surgery
end
