require 'test_helper'

class HoleareamapControllerTest < ActionDispatch::IntegrationTest
  test "should get areamap" do
    get holeareamap_areamap_url
    assert_response :success
  end

end
