require "application_system_test_case"

class HomeBoxesTest < ApplicationSystemTestCase
  setup do
    @home_box = home_boxes(:one)
  end

  test "visiting the index" do
    visit home_boxes_url
    assert_selector "h1", text: "Home boxes"
  end

  test "should create home box" do
    visit home_boxes_url
    click_on "New home box"

    fill_in "Description", with: @home_box.description
    fill_in "Title", with: @home_box.title
    fill_in "User", with: @home_box.user_id
    click_on "Create Home box"

    assert_text "Home box was successfully created"
    click_on "Back"
  end

  test "should update Home box" do
    visit home_box_url(@home_box)
    click_on "Edit this home box", match: :first

    fill_in "Description", with: @home_box.description
    fill_in "Title", with: @home_box.title
    fill_in "User", with: @home_box.user_id
    click_on "Update Home box"

    assert_text "Home box was successfully updated"
    click_on "Back"
  end

  test "should destroy Home box" do
    visit home_box_url(@home_box)
    click_on "Destroy this home box", match: :first

    assert_text "Home box was successfully destroyed"
  end
end
