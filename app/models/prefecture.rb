class Prefecture < ApplicationRecord
  has_many :clinics
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
