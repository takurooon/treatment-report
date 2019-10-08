class CreateClinicReportMaleSurgeries < ActiveRecord::Migration[6.0]
  def change
    create_table :clinic_report_male_surgeries do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :Male_surgery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
