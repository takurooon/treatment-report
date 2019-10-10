class FemaleDisease < ApplicationRecord
  has_many :female_shikkans, dependent: :destroy
  has_many :clinic_reports, through: :female_shikkans
end
