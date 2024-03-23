require "application_system_test_case"

class SocialsTest < ApplicationSystemTestCase
  setup do
    @social = socials(:one)
  end

  test "visiting the index" do
    visit socials_url
    assert_selector "h1", text: "Socials"
  end

  test "should create social" do
    visit socials_url
    click_on "New social"

    fill_in "Faacebook", with: @social.faacebook
    fill_in "Instgram", with: @social.instgram
    fill_in "Linkind", with: @social.linkind
    fill_in "User", with: @social.user_id
    fill_in "X", with: @social.x
    click_on "Create Social"

    assert_text "Social was successfully created"
    click_on "Back"
  end

  test "should update Social" do
    visit social_url(@social)
    click_on "Edit this social", match: :first

    fill_in "Faacebook", with: @social.faacebook
    fill_in "Instgram", with: @social.instgram
    fill_in "Linkind", with: @social.linkind
    fill_in "User", with: @social.user_id
    fill_in "X", with: @social.x
    click_on "Update Social"

    assert_text "Social was successfully updated"
    click_on "Back"
  end

  test "should destroy Social" do
    visit social_url(@social)
    click_on "Destroy this social", match: :first

    assert_text "Social was successfully destroyed"
  end
end
