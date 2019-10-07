class AddPostalCodeToClinics < ActiveRecord::Migration[6.0]
  def change
    add_column :clinics, :postal_code, :integer
  end
end
