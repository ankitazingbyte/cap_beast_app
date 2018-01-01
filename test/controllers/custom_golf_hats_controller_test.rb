require 'test_helper'

class CustomGolfHatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_golf_hat = custom_golf_hats(:one)
  end

  test "should get index" do
    get custom_golf_hats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_golf_hat_url
    assert_response :success
  end

  test "should create custom_golf_hat" do
    assert_difference('CustomGolfHat.count') do
      post custom_golf_hats_url, params: { custom_golf_hat: { back_image: @custom_golf_hat.back_image, image: @custom_golf_hat.image, left_image: @custom_golf_hat.left_image, logo: @custom_golf_hat.logo, price: @custom_golf_hat.price, right_image: @custom_golf_hat.right_image, title: @custom_golf_hat.title } }
    end

    assert_redirected_to custom_golf_hat_url(CustomGolfHat.last)
  end

  test "should show custom_golf_hat" do
    get custom_golf_hat_url(@custom_golf_hat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_golf_hat_url(@custom_golf_hat)
    assert_response :success
  end

  test "should update custom_golf_hat" do
    patch custom_golf_hat_url(@custom_golf_hat), params: { custom_golf_hat: { back_image: @custom_golf_hat.back_image, image: @custom_golf_hat.image, left_image: @custom_golf_hat.left_image, logo: @custom_golf_hat.logo, price: @custom_golf_hat.price, right_image: @custom_golf_hat.right_image, title: @custom_golf_hat.title } }
    assert_redirected_to custom_golf_hat_url(@custom_golf_hat)
  end

  test "should destroy custom_golf_hat" do
    assert_difference('CustomGolfHat.count', -1) do
      delete custom_golf_hat_url(@custom_golf_hat)
    end

    assert_redirected_to custom_golf_hats_url
  end
end
