require 'test_helper'

class MallsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should get home" do
      get :home
      assert_response :success
      assert_select "title", "ParkingMall | Home"
  end
end
