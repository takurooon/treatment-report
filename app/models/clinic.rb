class Clinic < ApplicationRecord
end

# == Schema Information
#
# Table name: clinics
#
#  id             :bigint           not null, primary key
#  clinic_address :string
#  clinic_name    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  prefecture_id  :bigint           not null
#
# Indexes
#
#  index_clinics_on_prefecture_id  (prefecture_id)
#
# Foreign Keys
#
#  fk_rails_...  (prefecture_id => prefectures.id)
#
