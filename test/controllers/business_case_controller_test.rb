require 'test_helper'

class BusinessCaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get business_case_index_url
    assert_response :success
  end

end
