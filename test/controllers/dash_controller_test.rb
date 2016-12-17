require 'test_helper'

class DashControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dash_index_url
    assert_response :success
  end

end
