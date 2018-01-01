require 'test_helper'

class CustomTruckerHatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_trucker_hat = custom_trucker_hats(:one)
  end

  test "should get index" do
    get custom_trucker_hats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_trucker_hat_url
    assert_response :success
  end

  test "should create custom_trucker_hat" do
    assert_difference('CustomTruckerHat.count') do
      post custom_trucker_hats_url, params: { custom_trucker_hat: { back_image: @custom_trucker_hat.back_image, image: @custom_trucker_hat.image, left_image: @custom_trucker_hat.left_image, logo: @custom_trucker_hat.logo, price: @custom_trucker_hat.price, right_image: @custom_trucker_hat.right_image, title: @custom_trucker_hat.title } }
    end

    assert_redirected_to custom_trucker_hat_url(CustomTruckerHat.last)
  end

  test "should show custom_trucker_hat" do
    get custom_trucker_hat_url(@custom_trucker_hat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_trucker_hat_url(@custom_trucker_hat)
    assert_response :success
  end

  test "should update custom_trucker_hat" do
    patch custom_trucker_hat_url(@custom_trucker_hat), params: { custom_trucker_hat: { back_image: @custom_trucker_hat.back_image, image: @custom_trucker_hat.image, left_image: @custom_trucker_hat.left_image, logo: @custom_trucker_hat.logo, price: @custom_trucker_hat.price, right_image: @custom_trucker_hat.right_image, title: @custom_trucker_hat.title } }
    assert_redirected_to custom_trucker_hat_url(@custom_trucker_hat)
  end

  test "should destroy custom_trucker_hat" do
    assert_difference('CustomTruckerHat.count', -1) do
      delete custom_trucker_hat_url(@custom_trucker_hat)
    end

    assert_redirected_to custom_trucker_hats_url
  end
end
