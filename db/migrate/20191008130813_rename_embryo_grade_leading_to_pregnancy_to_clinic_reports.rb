class RenameEmbryoGradeLeadingToPregnancyToClinicReports < ActiveRecord::Migration[6.0]
  def change
    rename_column :clinic_reports, :EmbryoGradeLeadingToPregnancy, :successful_embryo_grade
  end
end
