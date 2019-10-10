class OvarianStimulant < ApplicationRecord
  has_many :ranso_shigekis, dependent: :destroy
  has_many :clinic_reports, through: :ranso_shigekis
end
