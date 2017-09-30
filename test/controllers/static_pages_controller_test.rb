require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "My Car Travel 2.0"
  end
        
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get reservation" do
    get static_pages_reservation_url
    assert_response :success
    assert_select "title", "Reservation | #{@base_title}"      
  end

end
