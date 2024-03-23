require "application_system_test_case"

class HomeSitesTest < ApplicationSystemTestCase
  setup do
    @home_site = home_sites(:one)
  end

  test "visiting the index" do
    visit home_sites_url
    assert_selector "h1", text: "Home sites"
  end

  test "should create home site" do
    visit home_sites_url
    click_on "New home site"

    fill_in "Title", with: @home_site.title
    fill_in "User", with: @home_site.user_id
    click_on "Create Home site"

    assert_text "Home site was successfully created"
    click_on "Back"
  end

  test "should update Home site" do
    visit home_site_url(@home_site)
    click_on "Edit this home site", match: :first

    fill_in "Title", with: @home_site.title
    fill_in "User", with: @home_site.user_id
    click_on "Update Home site"

    assert_text "Home site was successfully updated"
    click_on "Back"
  end

  test "should destroy Home site" do
    visit home_site_url(@home_site)
    click_on "Destroy this home site", match: :first

    assert_text "Home site was successfully destroyed"
  end
end
