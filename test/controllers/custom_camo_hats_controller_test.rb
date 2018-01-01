require 'test_helper'

class CustomCamoHatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_camo_hat = custom_camo_hats(:one)
  end

  test "should get index" do
    get custom_camo_hats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_camo_hat_url
    assert_response :success
  end

  test "should create custom_camo_hat" do
    assert_difference('CustomCamoHat.count') do
      post custom_camo_hats_url, params: { custom_camo_hat: { back_image: @custom_camo_hat.back_image, image: @custom_camo_hat.image, left_image: @custom_camo_hat.left_image, logo: @custom_camo_hat.logo, price: @custom_camo_hat.price, right_image: @custom_camo_hat.right_image, title: @custom_camo_hat.title } }
    end

    assert_redirected_to custom_camo_hat_url(CustomCamoHat.last)
  end

  test "should show custom_camo_hat" do
    get custom_camo_hat_url(@custom_camo_hat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_camo_hat_url(@custom_camo_hat)
    assert_response :success
  end

  test "should update custom_camo_hat" do
    patch custom_camo_hat_url(@custom_camo_hat), params: { custom_camo_hat: { back_image: @custom_camo_hat.back_image, image: @custom_camo_hat.image, left_image: @custom_camo_hat.left_image, logo: @custom_camo_hat.logo, price: @custom_camo_hat.price, right_image: @custom_camo_hat.right_image, title: @custom_camo_hat.title } }
    assert_redirected_to custom_camo_hat_url(@custom_camo_hat)
  end

  test "should destroy custom_camo_hat" do
    assert_difference('CustomCamoHat.count', -1) do
      delete custom_camo_hat_url(@custom_camo_hat)
    end

    assert_redirected_to custom_camo_hats_url
  end
end
