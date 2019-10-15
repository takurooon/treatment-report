class AddFertilityTreatmentNumberToClinicReports < ActiveRecord::Migration[6.0]
  def change
    add_column :clinic_reports, :fertility_treatment_number, :integer
  end
end
