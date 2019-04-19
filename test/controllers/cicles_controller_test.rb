require 'test_helper'

class CiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cicle = cicles(:one)
  end

  test "should get index" do
    get cicles_url
    assert_response :success
  end

  test "should get new" do
    get new_cicle_url
    assert_response :success
  end

  test "should create cicle" do
    assert_difference('Cicle.count') do
      post cicles_url, params: { cicle: { name: @cicle.name } }
    end

    assert_redirected_to cicle_url(Cicle.last)
  end

  test "should show cicle" do
    get cicle_url(@cicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_cicle_url(@cicle)
    assert_response :success
  end

  test "should update cicle" do
    patch cicle_url(@cicle), params: { cicle: { name: @cicle.name } }
    assert_redirected_to cicle_url(@cicle)
  end

  test "should destroy cicle" do
    assert_difference('Cicle.count', -1) do
      delete cicle_url(@cicle)
    end

    assert_redirected_to cicles_url
  end
end
