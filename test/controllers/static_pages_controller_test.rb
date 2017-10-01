require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "My Car Travel 2.0"
  end
        
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get reservations" do
    get reservations_path
    assert_response :success
    assert_select "title", "Reservations | #{@base_title}"      
  end

end
