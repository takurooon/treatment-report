class RenameEmbryoCultureDayLeadingToPregnancyToClinicReports < ActiveRecord::Migration[6.0]
  def change
    rename_column :clinic_reports, :EmbryoCultureDayLeadingToPregnancy, :successful_embryo_culture_days
  end
end
