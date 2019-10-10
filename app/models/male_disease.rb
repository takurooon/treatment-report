class MaleDisease < ApplicationRecord
  has_many :male_shikkans, dependent: :destroy
  has_many :clinic_reports, through: :male_shikkans
end
