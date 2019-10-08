class CreateRansoShigekis < ActiveRecord::Migration[6.0]
  def change
    create_table :ranso_shigekis do |t|
      t.references :clinic_report, null: false, foreign_key: true
      t.references :ovarian_stimulant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
