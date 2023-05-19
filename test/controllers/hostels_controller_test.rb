require "test_helper"

class HostelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hostels_index_url
    assert_response :success
  end

  test "should get new" do
    get hostels_new_url
    assert_response :success
  end

  test "should get show" do
    get hostels_show_url
    assert_response :success
  end

  test "should get edit" do
    get hostels_edit_url
    assert_response :success
  end
end
