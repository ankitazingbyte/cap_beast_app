require 'test_helper'

class CustomAthleticHatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_athletic_hat = custom_athletic_hats(:one)
  end

  test "should get index" do
    get custom_athletic_hats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_athletic_hat_url
    assert_response :success
  end

  test "should create custom_athletic_hat" do
    assert_difference('CustomAthleticHat.count') do
      post custom_athletic_hats_url, params: { custom_athletic_hat: { back_image: @custom_athletic_hat.back_image, image: @custom_athletic_hat.image, left_image: @custom_athletic_hat.left_image, logo: @custom_athletic_hat.logo, price: @custom_athletic_hat.price, right_image: @custom_athletic_hat.right_image, title: @custom_athletic_hat.title } }
    end

    assert_redirected_to custom_athletic_hat_url(CustomAthleticHat.last)
  end

  test "should show custom_athletic_hat" do
    get custom_athletic_hat_url(@custom_athletic_hat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_athletic_hat_url(@custom_athletic_hat)
    assert_response :success
  end

  test "should update custom_athletic_hat" do
    patch custom_athletic_hat_url(@custom_athletic_hat), params: { custom_athletic_hat: { back_image: @custom_athletic_hat.back_image, image: @custom_athletic_hat.image, left_image: @custom_athletic_hat.left_image, logo: @custom_athletic_hat.logo, price: @custom_athletic_hat.price, right_image: @custom_athletic_hat.right_image, title: @custom_athletic_hat.title } }
    assert_redirected_to custom_athletic_hat_url(@custom_athletic_hat)
  end

  test "should destroy custom_athletic_hat" do
    assert_difference('CustomAthleticHat.count', -1) do
      delete custom_athletic_hat_url(@custom_athletic_hat)
    end

    assert_redirected_to custom_athletic_hats_url
  end
end
