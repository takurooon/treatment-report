class CreateFemaleShikkans < ActiveRecord::Migration[6.0]
  def change
    create_table :female_shikkans do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :female_disease, null: false, foreign_key: true

      t.timestamps
    end
  end
end
