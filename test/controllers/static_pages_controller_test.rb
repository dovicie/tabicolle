require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Tabicolle"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end


  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

end
