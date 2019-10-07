class CreateClinicReportSupplements < ActiveRecord::Migration[6.0]
  def change
    create_table :clinic_report_supplements do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :supplement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
