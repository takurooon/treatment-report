class AddJsogCodeToClinics < ActiveRecord::Migration[6.0]
  def change
    add_column :clinics, :jsog_code, :integer
  end
end
