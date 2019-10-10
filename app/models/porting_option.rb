class PortingOption < ApplicationRecord
  has_many :isyoku_options, dependent: :destroy
  has_many :clinic_reports, through: :isyoku_options
end
