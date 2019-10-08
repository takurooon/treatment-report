class CreateClinicReportMaleDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :clinic_report_male_diseases do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :male_disease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
