class City < ApplicationRecord
  belongs_to :prefecture
  has_many :wards, dependent: :destroy
end
