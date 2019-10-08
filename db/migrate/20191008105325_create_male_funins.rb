class CreateMaleFunins < ActiveRecord::Migration[6.0]
  def change
    create_table :male_funins do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :male_infertility_factor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
