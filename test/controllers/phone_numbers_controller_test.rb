require "test_helper"

class PhoneNumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get delete" do
    get phone_numbers_delete_url
    assert_response :success
  end

  test "should get edit" do
    get phone_numbers_edit_url
    assert_response :success
  end

  test "should get index" do
    get phone_numbers_index_url
    assert_response :success
  end

  test "should get new" do
    get phone_numbers_new_url
    assert_response :success
  end

  test "should get show" do
    get phone_numbers_show_url
    assert_response :success
  end
end
