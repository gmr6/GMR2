require "application_system_test_case"

class HomeTestsTest < ApplicationSystemTestCase
  setup do
    @home_test = home_tests(:one)
  end

  test "visiting the index" do
    visit home_tests_url
    assert_selector "h1", text: "Home tests"
  end

  test "should create home test" do
    visit home_tests_url
    click_on "New home test"

    fill_in "Title", with: @home_test.title
    fill_in "User", with: @home_test.user_id
    click_on "Create Home test"

    assert_text "Home test was successfully created"
    click_on "Back"
  end

  test "should update Home test" do
    visit home_test_url(@home_test)
    click_on "Edit this home test", match: :first

    fill_in "Title", with: @home_test.title
    fill_in "User", with: @home_test.user_id
    click_on "Update Home test"

    assert_text "Home test was successfully updated"
    click_on "Back"
  end

  test "should destroy Home test" do
    visit home_test_url(@home_test)
    click_on "Destroy this home test", match: :first

    assert_text "Home test was successfully destroyed"
  end
end
