require "test_helper"

class HomeBoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_box = home_boxes(:one)
  end

  test "should get index" do
    get home_boxes_url
    assert_response :success
  end

  test "should get new" do
    get new_home_box_url
    assert_response :success
  end

  test "should create home_box" do
    assert_difference("HomeBox.count") do
      post home_boxes_url, params: { home_box: { description: @home_box.description, title: @home_box.title, user_id: @home_box.user_id } }
    end

    assert_redirected_to home_box_url(HomeBox.last)
  end

  test "should show home_box" do
    get home_box_url(@home_box)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_box_url(@home_box)
    assert_response :success
  end

  test "should update home_box" do
    patch home_box_url(@home_box), params: { home_box: { description: @home_box.description, title: @home_box.title, user_id: @home_box.user_id } }
    assert_redirected_to home_box_url(@home_box)
  end

  test "should destroy home_box" do
    assert_difference("HomeBox.count", -1) do
      delete home_box_url(@home_box)
    end

    assert_redirected_to home_boxes_url
  end
end
