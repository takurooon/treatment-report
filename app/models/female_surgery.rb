class FemaleSurgery < ApplicationRecord
  has_many :female_syujutsus, dependent: :destroy
  has_many :clinic_reports, through: :female_syujutsus
end
