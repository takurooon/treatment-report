require 'test_helper'

class ClinicReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clinic_reports_index_url
    assert_response :success
  end

  test "should get new" do
    get clinic_reports_new_url
    assert_response :success
  end

  test "should get show" do
    get clinic_reports_show_url
    assert_response :success
  end

end
