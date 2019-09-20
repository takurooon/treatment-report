class RemovePrefectureIdFromClinics < ActiveRecord::Migration[6.0]
  def change
    remove_column :clinics, :prefecture_id, :integer
  end
end
