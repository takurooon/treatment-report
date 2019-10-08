class CreateMaleSyujutsus < ActiveRecord::Migration[6.0]
  def change
    create_table :male_syujutsus do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :male_surgery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
