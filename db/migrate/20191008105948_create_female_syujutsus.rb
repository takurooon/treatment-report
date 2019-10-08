class CreateFemaleSyujutsus < ActiveRecord::Migration[6.0]
  def change
    create_table :female_syujutsus do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :female_surgery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
