require 'test_helper'

class CustomBucketHatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_bucket_hat = custom_bucket_hats(:one)
  end

  test "should get index" do
    get custom_bucket_hats_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_bucket_hat_url
    assert_response :success
  end

  test "should create custom_bucket_hat" do
    assert_difference('CustomBucketHat.count') do
      post custom_bucket_hats_url, params: { custom_bucket_hat: { back_image: @custom_bucket_hat.back_image, image: @custom_bucket_hat.image, left_image: @custom_bucket_hat.left_image, logo: @custom_bucket_hat.logo, price: @custom_bucket_hat.price, right_image: @custom_bucket_hat.right_image, title: @custom_bucket_hat.title } }
    end

    assert_redirected_to custom_bucket_hat_url(CustomBucketHat.last)
  end

  test "should show custom_bucket_hat" do
    get custom_bucket_hat_url(@custom_bucket_hat)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_bucket_hat_url(@custom_bucket_hat)
    assert_response :success
  end

  test "should update custom_bucket_hat" do
    patch custom_bucket_hat_url(@custom_bucket_hat), params: { custom_bucket_hat: { back_image: @custom_bucket_hat.back_image, image: @custom_bucket_hat.image, left_image: @custom_bucket_hat.left_image, logo: @custom_bucket_hat.logo, price: @custom_bucket_hat.price, right_image: @custom_bucket_hat.right_image, title: @custom_bucket_hat.title } }
    assert_redirected_to custom_bucket_hat_url(@custom_bucket_hat)
  end

  test "should destroy custom_bucket_hat" do
    assert_difference('CustomBucketHat.count', -1) do
      delete custom_bucket_hat_url(@custom_bucket_hat)
    end

    assert_redirected_to custom_bucket_hats_url
  end
end
