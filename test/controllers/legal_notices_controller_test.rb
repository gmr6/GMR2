require "test_helper"

class LegalNoticesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legal_notice = legal_notices(:one)
  end

  test "should get index" do
    get legal_notices_url
    assert_response :success
  end

  test "should get new" do
    get new_legal_notice_url
    assert_response :success
  end

  test "should create legal_notice" do
    assert_difference("LegalNotice.count") do
      post legal_notices_url, params: { legal_notice: { title: @legal_notice.title, user_id: @legal_notice.user_id } }
    end

    assert_redirected_to legal_notice_url(LegalNotice.last)
  end

  test "should show legal_notice" do
    get legal_notice_url(@legal_notice)
    assert_response :success
  end

  test "should get edit" do
    get edit_legal_notice_url(@legal_notice)
    assert_response :success
  end

  test "should update legal_notice" do
    patch legal_notice_url(@legal_notice), params: { legal_notice: { title: @legal_notice.title, user_id: @legal_notice.user_id } }
    assert_redirected_to legal_notice_url(@legal_notice)
  end

  test "should destroy legal_notice" do
    assert_difference("LegalNotice.count", -1) do
      delete legal_notice_url(@legal_notice)
    end

    assert_redirected_to legal_notices_url
  end
end
