class CreatePortingOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :porting_options do |t|
      t.string :name

      t.timestamps
    end
  end
end
