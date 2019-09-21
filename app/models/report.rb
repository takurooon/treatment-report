class Report < ApplicationRecord
  belongs_to :user
  has_many :clinic_reports, :delete_all
end

# == Schema Information
#
# Table name: reports
#
#  id                               :bigint           not null, primary key
#  how_manieth_fertility_treatments :integer
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#  user_id                          :bigint
#
# Indexes
#
#  index_reports_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
