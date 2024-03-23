require "test_helper"

class HomeTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_test = home_tests(:one)
  end

  test "should get index" do
    get home_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_home_test_url
    assert_response :success
  end

  test "should create home_test" do
    assert_difference("HomeTest.count") do
      post home_tests_url, params: { home_test: { title: @home_test.title, user_id: @home_test.user_id } }
    end

    assert_redirected_to home_test_url(HomeTest.last)
  end

  test "should show home_test" do
    get home_test_url(@home_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_test_url(@home_test)
    assert_response :success
  end

  test "should update home_test" do
    patch home_test_url(@home_test), params: { home_test: { title: @home_test.title, user_id: @home_test.user_id } }
    assert_redirected_to home_test_url(@home_test)
  end

  test "should destroy home_test" do
    assert_difference("HomeTest.count", -1) do
      delete home_test_url(@home_test)
    end

    assert_redirected_to home_tests_url
  end
end
