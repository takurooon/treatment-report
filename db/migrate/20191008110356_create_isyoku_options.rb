class CreateIsyokuOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :isyoku_options do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :porting_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
