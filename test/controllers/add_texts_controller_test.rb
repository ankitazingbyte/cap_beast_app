require 'test_helper'

class AddTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_text = add_texts(:one)
  end

  test "should get index" do
    get add_texts_url
    assert_response :success
  end

  test "should get new" do
    get new_add_text_url
    assert_response :success
  end

  test "should create add_text" do
    assert_difference('AddText.count') do
      post add_texts_url, params: { add_text: { text: @add_text.text } }
    end

    assert_redirected_to add_text_url(AddText.last)
  end

  test "should show add_text" do
    get add_text_url(@add_text)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_text_url(@add_text)
    assert_response :success
  end

  test "should update add_text" do
    patch add_text_url(@add_text), params: { add_text: { text: @add_text.text } }
    assert_redirected_to add_text_url(@add_text)
  end

  test "should destroy add_text" do
    assert_difference('AddText.count', -1) do
      delete add_text_url(@add_text)
    end

    assert_redirected_to add_texts_url
  end
end
