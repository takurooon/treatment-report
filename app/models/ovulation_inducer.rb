class OvulationInducer < ApplicationRecord
  has_many :hairan_yuhatsus, dependent: :destroy
  has_many :clinic_reports, through: :hairan_yuhatsus
end