require 'test_helper'

class CustomFittedHatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_fitted_hat = custom_fitted_hats(:one)
  end

  test "should get index" do
    get custom_fitted_hats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_fitted_hat_url
    assert_response :success
  end

  test "should create custom_fitted_hat" do
    assert_difference('CustomFittedHat.count') do
      post custom_fitted_hats_url, params: { custom_fitted_hat: { back_image: @custom_fitted_hat.back_image, image: @custom_fitted_hat.image, left_image: @custom_fitted_hat.left_image, logo: @custom_fitted_hat.logo, price: @custom_fitted_hat.price, right_image: @custom_fitted_hat.right_image, title: @custom_fitted_hat.title } }
    end

    assert_redirected_to custom_fitted_hat_url(CustomFittedHat.last)
  end

  test "should show custom_fitted_hat" do
    get custom_fitted_hat_url(@custom_fitted_hat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_fitted_hat_url(@custom_fitted_hat)
    assert_response :success
  end

  test "should update custom_fitted_hat" do
    patch custom_fitted_hat_url(@custom_fitted_hat), params: { custom_fitted_hat: { back_image: @custom_fitted_hat.back_image, image: @custom_fitted_hat.image, left_image: @custom_fitted_hat.left_image, logo: @custom_fitted_hat.logo, price: @custom_fitted_hat.price, right_image: @custom_fitted_hat.right_image, title: @custom_fitted_hat.title } }
    assert_redirected_to custom_fitted_hat_url(@custom_fitted_hat)
  end

  test "should destroy custom_fitted_hat" do
    assert_difference('CustomFittedHat.count', -1) do
      delete custom_fitted_hat_url(@custom_fitted_hat)
    end

    assert_redirected_to custom_fitted_hats_url
  end
end
