class AddColumnToPrefectures < ActiveRecord::Migration[6.0]
  def change
    add_column :prefectures, :region_id, :integer
    add_column :prefectures, :region_name, :string
  end
end
