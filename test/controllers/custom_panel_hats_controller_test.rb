require 'test_helper'

class CustomPanelHatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_panel_hat = custom_panel_hats(:one)
  end

  test "should get index" do
    get custom_panel_hats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_panel_hat_url
    assert_response :success
  end

  test "should create custom_panel_hat" do
    assert_difference('CustomPanelHat.count') do
      post custom_panel_hats_url, params: { custom_panel_hat: { back_image: @custom_panel_hat.back_image, image: @custom_panel_hat.image, left_image: @custom_panel_hat.left_image, logo: @custom_panel_hat.logo, price: @custom_panel_hat.price, right_image: @custom_panel_hat.right_image, title: @custom_panel_hat.title } }
    end

    assert_redirected_to custom_panel_hat_url(CustomPanelHat.last)
  end

  test "should show custom_panel_hat" do
    get custom_panel_hat_url(@custom_panel_hat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_panel_hat_url(@custom_panel_hat)
    assert_response :success
  end

  test "should update custom_panel_hat" do
    patch custom_panel_hat_url(@custom_panel_hat), params: { custom_panel_hat: { back_image: @custom_panel_hat.back_image, image: @custom_panel_hat.image, left_image: @custom_panel_hat.left_image, logo: @custom_panel_hat.logo, price: @custom_panel_hat.price, right_image: @custom_panel_hat.right_image, title: @custom_panel_hat.title } }
    assert_redirected_to custom_panel_hat_url(@custom_panel_hat)
  end

  test "should destroy custom_panel_hat" do
    assert_difference('CustomPanelHat.count', -1) do
      delete custom_panel_hat_url(@custom_panel_hat)
    end

    assert_redirected_to custom_panel_hats_url
  end
end
