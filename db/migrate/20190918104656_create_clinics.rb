class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.string :clinic_name
      t.string :clinic_address

      t.timestamps
    end
  end
end
