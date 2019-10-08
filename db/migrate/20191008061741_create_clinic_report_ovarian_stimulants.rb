class CreateClinicReportOvarianStimulants < ActiveRecord::Migration[6.0]
  def change
    create_table :clinic_report_ovarian_stimulants do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :ovarian_stimulant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
