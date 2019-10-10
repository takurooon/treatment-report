class FemaleInfertilityFactor < ApplicationRecord
  has_many :female_funins, dependent: :destroy
  has_many :clinic_reports, through: :female_funins
end
