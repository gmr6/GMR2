require "application_system_test_case"

class LegalNoticesTest < ApplicationSystemTestCase
  setup do
    @legal_notice = legal_notices(:one)
  end

  test "visiting the index" do
    visit legal_notices_url
    assert_selector "h1", text: "Legal notices"
  end

  test "should create legal notice" do
    visit legal_notices_url
    click_on "New legal notice"

    fill_in "Title", with: @legal_notice.title
    fill_in "User", with: @legal_notice.user_id
    click_on "Create Legal notice"

    assert_text "Legal notice was successfully created"
    click_on "Back"
  end

  test "should update Legal notice" do
    visit legal_notice_url(@legal_notice)
    click_on "Edit this legal notice", match: :first

    fill_in "Title", with: @legal_notice.title
    fill_in "User", with: @legal_notice.user_id
    click_on "Update Legal notice"

    assert_text "Legal notice was successfully updated"
    click_on "Back"
  end

  test "should destroy Legal notice" do
    visit legal_notice_url(@legal_notice)
    click_on "Destroy this legal notice", match: :first

    assert_text "Legal notice was successfully destroyed"
  end
end
