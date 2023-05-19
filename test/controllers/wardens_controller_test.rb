require "test_helper"

class WardensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wardens_index_url
    assert_response :success
  end

  test "should get show" do
    get wardens_show_url
    assert_response :success
  end

  test "should get edit" do
    get wardens_edit_url
    assert_response :success
  end

  test "should get new" do
    get wardens_new_url
    assert_response :success
  end
end
