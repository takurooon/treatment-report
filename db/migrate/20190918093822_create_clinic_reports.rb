class CreateClinicReports < ActiveRecord::Migration[6.0]
  def change
    create_table :clinic_reports do |t|
      t.integer :current_state                    #成功/断念
      t.integer :work_style                       #当時の働き方
      t.integer :number_of_clinics                #何院目
      t.integer :address_at_that_time             #当時の住所
      t.integer :number_of_aih                    #人工授精の回数
      t.integer :treatment_start_age              #治療開始年齢
      t.integer :treatment_end_age                #治療終了年齢
      t.integer :treatment_period                 #そのクリニックでの治療期間
      t.integer :amh                              #AMHの数値
      t.integer :bmi                              #BMIの数値
      t.integer :types_of_eggs_and_sperm          #用いた卵子と精子（自前か提供か）
      t.integer :total_number_of_sairan           #そのクリニックでの総採卵回数
      t.integer :number_of_eggs_collected         #そのクリニックでの総採卵個数
      t.integer :total_number_of_transplants      #そのクリニックでの総移植回数
      t.integer :number_of_eggs_stored            #保存している卵数（貯卵数）
      t.integer :type_of_sairan_cycle             #採卵周期のタイプ
      t.integer :types_of_fertilization_methods   #受精方法
      t.integer :number_of_fertilized_eggs        #受精卵の個数
      t.integer :number_of_frozen_eggs            #凍結できた数
      t.integer :cost                             #そのクリニックでの治療費総額
      t.integer :credit_card_validity             #クレジットカードが使えるかどうか
      t.integer :average_waiting_time             #平均診察待ち時間
      t.integer :clinic_selection_criteria        #クリニック選定基準
      t.text :content                             #自由記述
      t.text :clinic_review                       #クリニックの口コミ
      t.timestamps
    end
  end
end
