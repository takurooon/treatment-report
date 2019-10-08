class RenameEggMaturityLeadingToPregnancyToClinicReports < ActiveRecord::Migration[6.0]
  def change
    rename_column :clinic_reports, :EggMaturityLeadingToPregnancy, :successful_egg_maturity
  end
end