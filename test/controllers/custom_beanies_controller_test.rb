require 'test_helper'

class CustomBeaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_beany = custom_beanies(:one)
  end

  test "should get index" do
    get custom_beanies_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_beany_url
    assert_response :success
  end

  test "should create custom_beany" do
    assert_difference('CustomBeanie.count') do
      post custom_beanies_url, params: { custom_beany: { back_image: @custom_beany.back_image, image: @custom_beany.image, left_image: @custom_beany.left_image, logo: @custom_beany.logo, price: @custom_beany.price, right_image: @custom_beany.right_image, title: @custom_beany.title } }
    end

    assert_redirected_to custom_beany_url(CustomBeanie.last)
  end

  test "should show custom_beany" do
    get custom_beany_url(@custom_beany)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_beany_url(@custom_beany)
    assert_response :success
  end

  test "should update custom_beany" do
    patch custom_beany_url(@custom_beany), params: { custom_beany: { back_image: @custom_beany.back_image, image: @custom_beany.image, left_image: @custom_beany.left_image, logo: @custom_beany.logo, price: @custom_beany.price, right_image: @custom_beany.right_image, title: @custom_beany.title } }
    assert_redirected_to custom_beany_url(@custom_beany)
  end

  test "should destroy custom_beany" do
    assert_difference('CustomBeanie.count', -1) do
      delete custom_beany_url(@custom_beany)
    end

    assert_redirected_to custom_beanies_url
  end
end
