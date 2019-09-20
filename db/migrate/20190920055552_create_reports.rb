class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.integer :how_manieth_fertility_treatments
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
