class CreateClinicReportMaleInfertilityFactors < ActiveRecord::Migration[6.0]
  def change
    create_table :clinic_report_male_infertility_factors do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :Male_infertility_factor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
