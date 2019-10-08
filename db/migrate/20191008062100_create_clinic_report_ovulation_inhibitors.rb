class CreateClinicReportOvulationInhibitors < ActiveRecord::Migration[6.0]
  def change
    create_table :clinic_report_ovulation_inhibitors do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :ovulation_inhibitor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
