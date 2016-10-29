require 'test_helper'

class MemoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memoa = memoas(:one)
  end

  test "should get index" do
    get memoas_url
    assert_response :success
  end

  test "should get new" do
    get new_memoa_url
    assert_response :success
  end

  test "should create memoa" do
    assert_difference('Memoa.count') do
      post memoas_url, params: { memoa: { description: @memoa.description, name: @memoa.name, picture: @memoa.picture } }
    end

    assert_redirected_to memoa_url(Memoa.last)
  end

  test "should show memoa" do
    get memoa_url(@memoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_memoa_url(@memoa)
    assert_response :success
  end

  test "should update memoa" do
    patch memoa_url(@memoa), params: { memoa: { description: @memoa.description, name: @memoa.name, picture: @memoa.picture } }
    assert_redirected_to memoa_url(@memoa)
  end

  test "should destroy memoa" do
    assert_difference('Memoa.count', -1) do
      delete memoa_url(@memoa)
    end

    assert_redirected_to memoas_url
  end
end
