require 'test_helper'

class TwcsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twcs_index_url
    assert_response :success
  end

end
