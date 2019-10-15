class AddTreatmentTypeToClinicReports < ActiveRecord::Migration[6.0]
  def change
    add_column :clinic_reports, :treatment_type, :integer
  end
end
