# == Schema Information
#
# Table name: prefectures
#
#  id          :bigint           not null, primary key
#  name        :string
#  region_name :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  region_id   :integer
#

require 'test_helper'

class PrefectureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
