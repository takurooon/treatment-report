class Prefecture < ApplicationRecord
  has_many :clinics
  has_many :cities
  has_many :wards
end

# == Schema Information
#
# Table name: prefectures
#
#  id          :bigint           not null, primary key
#  name        :string
#  region_name :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  region_id   :integer
#
