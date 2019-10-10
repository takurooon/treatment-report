class MaleInfertilityFactor < ApplicationRecord
  has_many :male_funins, dependent: :destroy
  has_many :clinic_reports, through: :male_funins
end