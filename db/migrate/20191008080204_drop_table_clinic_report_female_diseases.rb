class DropTableClinicReportFemaleDiseases < ActiveRecord::Migration[6.0]
  def change
    drop_table :clinic_report_female_diseases
  end
end