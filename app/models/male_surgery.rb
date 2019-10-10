class MaleSurgery < ApplicationRecord
  has_many :male_syujutsus, dependent: :destroy
  has_many :clinic_reports, through: :male_syujutsus
end
