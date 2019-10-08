class CreateMaleSurgeries < ActiveRecord::Migration[6.0]
  def change
    create_table :male_surgeries do |t|
      t.string :name

      t.timestamps
    end
  end
end
