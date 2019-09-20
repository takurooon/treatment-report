class AddReportRefToClinicReports < ActiveRecord::Migration[6.0]
  def change
    add_reference :clinic_reports, :report, null: false, foreign_key: true
  end
end
