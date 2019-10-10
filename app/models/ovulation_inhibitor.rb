class OvulationInhibitor < ApplicationRecord
  has_many :hairan_yokuseis, dependent: :destroy
  has_many :clinic_reports, through: :hairan_yokuseis
end
