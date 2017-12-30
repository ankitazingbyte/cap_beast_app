require 'test_helper'

class CustomSnapbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_snapback = custom_snapbacks(:one)
  end

  test "should get index" do
    get custom_snapbacks_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_snapback_url
    assert_response :success
  end

  test "should create custom_snapback" do
    assert_difference('CustomSnapback.count') do
      post custom_snapbacks_url, params: { custom_snapback: { image: @custom_snapback.image, logo: @custom_snapback.logo, price: @custom_snapback.price, title: @custom_snapback.title } }
    end

    assert_redirected_to custom_snapback_url(CustomSnapback.last)
  end

  test "should show custom_snapback" do
    get custom_snapback_url(@custom_snapback)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_snapback_url(@custom_snapback)
    assert_response :success
  end

  test "should update custom_snapback" do
    patch custom_snapback_url(@custom_snapback), params: { custom_snapback: { image: @custom_snapback.image, logo: @custom_snapback.logo, price: @custom_snapback.price, title: @custom_snapback.title } }
    assert_redirected_to custom_snapback_url(@custom_snapback)
  end

  test "should destroy custom_snapback" do
    assert_difference('CustomSnapback.count', -1) do
      delete custom_snapback_url(@custom_snapback)
    end

    assert_redirected_to custom_snapbacks_url
  end
end
