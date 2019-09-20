class AddClinicRefToClinicReports < ActiveRecord::Migration[6.0]
  def change
    add_reference :clinic_reports, :clinic, null: false, foreign_key: true
  end
end
