class AddPrefectureIdToClinics < ActiveRecord::Migration[6.0]
  def change
    add_column :clinics, :prefecture_id, :integer
  end
end