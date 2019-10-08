class CreateClinicReportPortingOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :clinic_report_porting_options do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :porting_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
