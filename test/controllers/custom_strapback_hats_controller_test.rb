require 'test_helper'

class CustomStrapbackHatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_strapback_hat = custom_strapback_hats(:one)
  end

  test "should get index" do
    get custom_strapback_hats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_strapback_hat_url
    assert_response :success
  end

  test "should create custom_strapback_hat" do
    assert_difference('CustomStrapbackHat.count') do
      post custom_strapback_hats_url, params: { custom_strapback_hat: { back_image: @custom_strapback_hat.back_image, image: @custom_strapback_hat.image, left_image: @custom_strapback_hat.left_image, logo: @custom_strapback_hat.logo, price: @custom_strapback_hat.price, right_image: @custom_strapback_hat.right_image, title: @custom_strapback_hat.title } }
    end

    assert_redirected_to custom_strapback_hat_url(CustomStrapbackHat.last)
  end

  test "should show custom_strapback_hat" do
    get custom_strapback_hat_url(@custom_strapback_hat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_strapback_hat_url(@custom_strapback_hat)
    assert_response :success
  end

  test "should update custom_strapback_hat" do
    patch custom_strapback_hat_url(@custom_strapback_hat), params: { custom_strapback_hat: { back_image: @custom_strapback_hat.back_image, image: @custom_strapback_hat.image, left_image: @custom_strapback_hat.left_image, logo: @custom_strapback_hat.logo, price: @custom_strapback_hat.price, right_image: @custom_strapback_hat.right_image, title: @custom_strapback_hat.title } }
    assert_redirected_to custom_strapback_hat_url(@custom_strapback_hat)
  end

  test "should destroy custom_strapback_hat" do
    assert_difference('CustomStrapbackHat.count', -1) do
      delete custom_strapback_hat_url(@custom_strapback_hat)
    end

    assert_redirected_to custom_strapback_hats_url
  end
end
