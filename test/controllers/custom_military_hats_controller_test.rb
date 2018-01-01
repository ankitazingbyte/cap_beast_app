require 'test_helper'

class CustomMilitaryHatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_military_hat = custom_military_hats(:one)
  end

  test "should get index" do
    get custom_military_hats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_military_hat_url
    assert_response :success
  end

  test "should create custom_military_hat" do
    assert_difference('CustomMilitaryHat.count') do
      post custom_military_hats_url, params: { custom_military_hat: { back_image: @custom_military_hat.back_image, image: @custom_military_hat.image, left_image: @custom_military_hat.left_image, logo: @custom_military_hat.logo, price: @custom_military_hat.price, right_image: @custom_military_hat.right_image, title: @custom_military_hat.title } }
    end

    assert_redirected_to custom_military_hat_url(CustomMilitaryHat.last)
  end

  test "should show custom_military_hat" do
    get custom_military_hat_url(@custom_military_hat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_military_hat_url(@custom_military_hat)
    assert_response :success
  end

  test "should update custom_military_hat" do
    patch custom_military_hat_url(@custom_military_hat), params: { custom_military_hat: { back_image: @custom_military_hat.back_image, image: @custom_military_hat.image, left_image: @custom_military_hat.left_image, logo: @custom_military_hat.logo, price: @custom_military_hat.price, right_image: @custom_military_hat.right_image, title: @custom_military_hat.title } }
    assert_redirected_to custom_military_hat_url(@custom_military_hat)
  end

  test "should destroy custom_military_hat" do
    assert_difference('CustomMilitaryHat.count', -1) do
      delete custom_military_hat_url(@custom_military_hat)
    end

    assert_redirected_to custom_military_hats_url
  end
end
