class CreateHairanYuhatsus < ActiveRecord::Migration[6.0]
  def change
    create_table :hairan_yuhatsus do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :ovulation_inducer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
