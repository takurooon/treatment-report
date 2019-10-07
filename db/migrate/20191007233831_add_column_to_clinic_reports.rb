class AddColumnToClinicReports < ActiveRecord::Migration[6.0]
  def change
    add_column :clinic_reports, :EggMaturityLeadingToPregnancy, :integer
    add_column :clinic_reports, :EmbryoCultureDayLeadingToPregnancy, :integer
    add_column :clinic_reports, :EmbryoGradeLeadingToPregnancy, :integer
  end
end
