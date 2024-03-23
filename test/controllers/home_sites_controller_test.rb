require "test_helper"

class HomeSitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_site = home_sites(:one)
  end

  test "should get index" do
    get home_sites_url
    assert_response :success
  end

  test "should get new" do
    get new_home_site_url
    assert_response :success
  end

  test "should create home_site" do
    assert_difference("HomeSite.count") do
      post home_sites_url, params: { home_site: { title: @home_site.title, user_id: @home_site.user_id } }
    end

    assert_redirected_to home_site_url(HomeSite.last)
  end

  test "should show home_site" do
    get home_site_url(@home_site)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_site_url(@home_site)
    assert_response :success
  end

  test "should update home_site" do
    patch home_site_url(@home_site), params: { home_site: { title: @home_site.title, user_id: @home_site.user_id } }
    assert_redirected_to home_site_url(@home_site)
  end

  test "should destroy home_site" do
    assert_difference("HomeSite.count", -1) do
      delete home_site_url(@home_site)
    end

    assert_redirected_to home_sites_url
  end
end
