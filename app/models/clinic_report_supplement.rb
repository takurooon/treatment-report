class ClinicReportSupplement < ApplicationRecord
  belongs_to :clinic_report
  belongs_to :supplement
end
