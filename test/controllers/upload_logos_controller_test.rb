require 'test_helper'

class UploadLogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upload_logo = upload_logos(:one)
  end

  test "should get index" do
    get upload_logos_url
    assert_response :success
  end

  test "should get new" do
    get new_upload_logo_url
    assert_response :success
  end

  test "should create upload_logo" do
    assert_difference('UploadLogo.count') do
      post upload_logos_url, params: { upload_logo: { logo: @upload_logo.logo } }
    end

    assert_redirected_to upload_logo_url(UploadLogo.last)
  end

  test "should show upload_logo" do
    get upload_logo_url(@upload_logo)
    assert_response :success
  end

  test "should get edit" do
    get edit_upload_logo_url(@upload_logo)
    assert_response :success
  end

  test "should update upload_logo" do
    patch upload_logo_url(@upload_logo), params: { upload_logo: { logo: @upload_logo.logo } }
    assert_redirected_to upload_logo_url(@upload_logo)
  end

  test "should destroy upload_logo" do
    assert_difference('UploadLogo.count', -1) do
      delete upload_logo_url(@upload_logo)
    end

    assert_redirected_to upload_logos_url
  end
end
