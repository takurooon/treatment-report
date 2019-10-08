class CreateMaleInfertilityFactors < ActiveRecord::Migration[6.0]
  def change
    create_table :male_infertility_factors do |t|
      t.string :name

      t.timestamps
    end
  end
end
