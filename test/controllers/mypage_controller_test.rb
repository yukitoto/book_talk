require 'test_helper'

class MypageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
